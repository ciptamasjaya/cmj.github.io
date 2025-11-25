#!/bin/bash
#
# add-comment.sh
# Interactive script to add new comment to JSON data
#
# Usage: ./scripts/add-comment.sh
#
# This script:
# 1. Prompts for comment details
# 2. Supports threaded comments (replies)
# 3. Adds comment to comment--service.json or comment--post.json
# 4. Auto-increments comment ID
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
echo -e "  ${CYAN}Add New Comment${NC}"
echo "=================================================="
echo ""

# Check if jq is installed
if ! command -v jq &> /dev/null; then
    echo -e "${RED}Error: jq is required but not installed.${NC}"
    echo "Install with: sudo apt install jq"
    exit 1
fi

# Choose comment type
echo "Comment on:"
echo "  1) Service (layanan)"
echo "  2) Blog Post (artikel)"
echo ""
read -p "Choice [1]: " TYPE
TYPE=${TYPE:-1}

if [ "$TYPE" == "1" ]; then
    FILE="$DATA_DIR/comment--service.json"
    TYPE_NAME="service"
else
    FILE="$DATA_DIR/comment--post.json"
    TYPE_NAME="post"
fi

# Check if file exists
if [ ! -f "$FILE" ]; then
    echo -e "${RED}Error: $FILE not found${NC}"
    exit 1
fi

echo ""
echo -e "${YELLOW}Enter comment details:${NC}"
echo "---"

# Show available slugs
echo ""
echo "Available slugs (from existing comments):"
jq -r '.comments | map(.slug) | unique | .[]' "$FILE" 2>/dev/null | while read slug; do
    echo "  - $slug"
done
echo ""

# Get comment details
read -p "Slug (e.g., riksa-uji-forklift): " SLUG
if [ -z "$SLUG" ]; then
    echo -e "${RED}Error: Slug is required${NC}"
    exit 1
fi

# Show existing comments for this slug (for threading)
echo ""
echo "Existing comments for '$SLUG':"
jq -r --arg slug "$SLUG" '.comments | map(select(.slug == $slug)) | .[] | "  [\(.id)] \(.author): \(.content | .[0:50])..."' "$FILE" 2>/dev/null || echo "  (none)"
echo ""

read -p "Reply to comment ID (leave empty for new thread): " PARENT_ID

read -p "Author name: " AUTHOR
if [ -z "$AUTHOR" ]; then
    echo -e "${RED}Error: Author is required${NC}"
    exit 1
fi

echo "Comment content (press Enter twice to finish):"
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

# Get next ID
LAST_ID=$(jq '._meta.last_comment_id // 0' "$FILE")
NEW_ID=$((LAST_ID + 1))

# Set parent_id
if [ -z "$PARENT_ID" ]; then
    PARENT_JSON="null"
else
    PARENT_JSON="$PARENT_ID"
fi

# Show confirmation
echo ""
echo "=================================================="
echo -e "${YELLOW}Comment Summary:${NC}"
echo "---"
echo "  ID:        $NEW_ID"
echo "  Slug:      $SLUG"
echo "  Author:    $AUTHOR"
[ -n "$PARENT_ID" ] && echo "  Reply to:  Comment #$PARENT_ID"
echo "  Content:   ${CONTENT:0:50}..."
echo "=================================================="
echo ""

read -p "Add this comment? (y/n) [y]: " CONFIRM
CONFIRM=${CONFIRM:-y}

if [[ "$CONFIRM" != "y" && "$CONFIRM" != "Y" ]]; then
    echo -e "${YELLOW}Cancelled.${NC}"
    exit 0
fi

# Create temporary file
TEMP_FILE=$(mktemp)

# Add comment to JSON using jq
jq --arg id "$NEW_ID" \
   --arg slug "$SLUG" \
   --argjson parent "$PARENT_JSON" \
   --arg author "$AUTHOR" \
   --arg content "$CONTENT" \
   '
   .comments += [{
     id: ($id | tonumber),
     slug: $slug,
     parent_comment_id: $parent,
     author: $author,
     content: $content,
     created_at: (now | strftime("%Y-%m-%dT%H:%M:%SZ"))
   }]
   | ._meta.last_comment_id = ($id | tonumber)
   | ._meta.last_updated = (now | strftime("%Y-%m-%dT%H:%M:%SZ"))
   ' "$FILE" > "$TEMP_FILE"

# Replace original file
mv "$TEMP_FILE" "$FILE"

echo ""
echo -e "${GREEN}=================================================="
echo "  Comment added successfully!"
echo "==================================================${NC}"
echo ""
echo "Comment ID: $NEW_ID"
echo "File: $FILE"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo "  1. Rebuild site: ./rebuild.sh"
echo "  2. Test locally and commit changes"
echo ""
