#!/bin/bash
#
# add-review.sh
# Interactive script to add new review to JSON data
#
# Usage: ./scripts/add-review.sh
#
# This script:
# 1. Prompts for review details
# 2. Adds review to review--service.json or review--post.json
# 3. Auto-increments review ID
# 4. Reminds to run calculate-ratings.sh
#

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Get script directory and project root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
DATA_DIR="$PROJECT_ROOT/_data"

echo "=================================================="
echo -e "  ${CYAN}Add New Review${NC}"
echo "=================================================="
echo ""

# Check if jq is installed
if ! command -v jq &> /dev/null; then
    echo -e "${RED}Error: jq is required but not installed.${NC}"
    echo "Install with: sudo apt install jq"
    exit 1
fi

# Choose review type
echo "Review for:"
echo "  1) Service (layanan)"
echo "  2) Blog Post (artikel)"
echo ""
read -p "Choice [1]: " TYPE
TYPE=${TYPE:-1}

if [ "$TYPE" == "1" ]; then
    FILE="$DATA_DIR/review--service.json"
    TYPE_NAME="service"
else
    FILE="$DATA_DIR/review--post.json"
    TYPE_NAME="post"
fi

# Check if file exists
if [ ! -f "$FILE" ]; then
    echo -e "${RED}Error: $FILE not found${NC}"
    exit 1
fi

echo ""
echo -e "${YELLOW}Enter review details:${NC}"
echo "---"

# Show available slugs
echo ""
echo "Available slugs (from existing reviews):"
jq -r '.reviews | map(.slug) | unique | .[]' "$FILE" 2>/dev/null | while read slug; do
    echo "  - $slug"
done
echo ""

# Get review details
read -p "Slug (e.g., riksa-uji-forklift): " SLUG
if [ -z "$SLUG" ]; then
    echo -e "${RED}Error: Slug is required${NC}"
    exit 1
fi

read -p "Author name: " AUTHOR
if [ -z "$AUTHOR" ]; then
    echo -e "${RED}Error: Author is required${NC}"
    exit 1
fi

read -p "Company (optional): " COMPANY

while true; do
    read -p "Rating (1-5): " RATING
    if [[ "$RATING" =~ ^[1-5]$ ]]; then
        break
    else
        echo -e "${RED}Please enter a number between 1 and 5${NC}"
    fi
done

read -p "Review title: " TITLE
if [ -z "$TITLE" ]; then
    echo -e "${RED}Error: Title is required${NC}"
    exit 1
fi

echo "Review content (press Enter twice to finish):"
CONTENT=""
while IFS= read -r line; do
    [ -z "$line" ] && break
    CONTENT="${CONTENT}${line} "
done
CONTENT=$(echo "$CONTENT" | sed 's/ $//')

if [ -z "$CONTENT" ]; then
    echo -e "${RED}Error: Content is required${NC}"
    exit 1
fi

read -p "Verified review? (y/n) [y]: " VERIFIED
VERIFIED=${VERIFIED:-y}
[[ "$VERIFIED" == "y" || "$VERIFIED" == "Y" ]] && VERIFIED_BOOL="true" || VERIFIED_BOOL="false"

read -p "Featured on homepage? (y/n) [n]: " FEATURED
FEATURED=${FEATURED:-n}
[[ "$FEATURED" == "y" || "$FEATURED" == "Y" ]] && FEATURED_BOOL="true" || FEATURED_BOOL="false"

# Get next ID
LAST_ID=$(jq '._meta.last_review_id // 0' "$FILE")
NEW_ID=$((LAST_ID + 1))

# Show confirmation
echo ""
echo "=================================================="
echo -e "${YELLOW}Review Summary:${NC}"
echo "---"
echo "  ID:       $NEW_ID"
echo "  Slug:     $SLUG"
echo "  Author:   $AUTHOR"
[ -n "$COMPANY" ] && echo "  Company:  $COMPANY"
echo "  Rating:   $RATING/5"
echo "  Title:    $TITLE"
echo "  Content:  ${CONTENT:0:50}..."
echo "  Verified: $VERIFIED_BOOL"
echo "  Featured: $FEATURED_BOOL"
echo "=================================================="
echo ""

read -p "Add this review? (y/n) [y]: " CONFIRM
CONFIRM=${CONFIRM:-y}

if [[ "$CONFIRM" != "y" && "$CONFIRM" != "Y" ]]; then
    echo -e "${YELLOW}Cancelled.${NC}"
    exit 0
fi

# Create temporary file for the new review
TEMP_FILE=$(mktemp)

# Build the new review object
if [ -n "$COMPANY" ]; then
    COMPANY_JSON="\"company\": \"$COMPANY\","
else
    COMPANY_JSON=""
fi

# Add review to JSON using jq
jq --arg id "$NEW_ID" \
   --arg slug "$SLUG" \
   --arg author "$AUTHOR" \
   --arg company "$COMPANY" \
   --argjson rating "$RATING" \
   --arg title "$TITLE" \
   --arg content "$CONTENT" \
   --argjson verified "$VERIFIED_BOOL" \
   --argjson featured "$FEATURED_BOOL" \
   '
   .reviews += [{
     id: ($id | tonumber),
     slug: $slug,
     author: $author,
     company: (if $company == "" then null else $company end),
     rating: $rating,
     title: $title,
     content: $content,
     verified: $verified,
     featured: $featured,
     helpful_count: 0,
     created_at: (now | strftime("%Y-%m-%dT%H:%M:%SZ"))
   }]
   | ._meta.last_review_id = ($id | tonumber)
   | ._meta.last_updated = (now | strftime("%Y-%m-%dT%H:%M:%SZ"))
   | .reviews |= map(if .company == null then del(.company) else . end)
   ' "$FILE" > "$TEMP_FILE"

# Replace original file
mv "$TEMP_FILE" "$FILE"

echo ""
echo -e "${GREEN}=================================================="
echo "  Review added successfully!"
echo "==================================================${NC}"
echo ""
echo "Review ID: $NEW_ID"
echo "File: $FILE"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo "  1. Calculate ratings: ./scripts/calculate-ratings.sh"
echo "  2. Rebuild site:      ./rebuild.sh"
echo "  3. Test locally and commit changes"
echo ""
