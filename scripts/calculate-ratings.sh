#!/bin/bash
#
# calculate-ratings.sh
# Calculate aggregate ratings from reviews JSON files
#
# Usage: ./scripts/calculate-ratings.sh
#
# This script reads review--service.json and calculates:
# - Average rating per service slug
# - Total review count per slug
# - Rating distribution (5-star, 4-star, etc.)
# - Updates rating--service.json with calculated values
#

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get script directory and project root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
DATA_DIR="$PROJECT_ROOT/_data"

echo "=================================================="
echo "  Calculate Ratings from Reviews"
echo "=================================================="
echo ""

# Check if jq is installed
if ! command -v jq &> /dev/null; then
    echo -e "${RED}Error: jq is required but not installed.${NC}"
    echo "Install with: sudo apt install jq"
    exit 1
fi

# Calculate service ratings
SERVICE_REVIEWS="$DATA_DIR/review--service.json"
SERVICE_RATINGS="$DATA_DIR/rating--service.json"

if [ -f "$SERVICE_REVIEWS" ]; then
    echo -e "${YELLOW}Processing service reviews...${NC}"

    # Count total reviews
    TOTAL=$(jq '.reviews | length' "$SERVICE_REVIEWS")
    echo "  Found $TOTAL reviews"

    # Calculate ratings grouped by slug
    jq '
      .reviews
      | group_by(.slug)
      | map({
          slug: .[0].slug,
          total_reviews: length,
          average: (
            (map(.rating) | add / length) * 10 | floor / 10
          ),
          distribution: (
            reduce .[] as $r (
              {"5": 0, "4": 0, "3": 0, "2": 0, "1": 0};
              .[$r.rating | tostring] += 1
            )
          ),
          last_calculated: (now | strftime("%Y-%m-%dT%H:%M:%SZ"))
        })
      | {ratings: .}
    ' "$SERVICE_REVIEWS" > "$SERVICE_RATINGS"

    # Show summary
    SLUGS=$(jq '.ratings | length' "$SERVICE_RATINGS")
    echo -e "${GREEN}  ✓ Updated $SERVICE_RATINGS${NC}"
    echo "  Calculated ratings for $SLUGS services"
    echo ""

    # Show per-service summary
    echo "  Service Ratings:"
    jq -r '.ratings[] | "    - \(.slug): \(.average) (\(.total_reviews) reviews)"' "$SERVICE_RATINGS"
    echo ""
else
    echo -e "${RED}  ✗ Service reviews file not found: $SERVICE_REVIEWS${NC}"
fi

# Calculate post ratings (if exists)
POST_REVIEWS="$DATA_DIR/review--post.json"
POST_RATINGS="$DATA_DIR/rating--post.json"

if [ -f "$POST_REVIEWS" ]; then
    echo -e "${YELLOW}Processing post reviews...${NC}"

    TOTAL=$(jq '.reviews | length' "$POST_REVIEWS")
    echo "  Found $TOTAL reviews"

    jq '
      .reviews
      | group_by(.slug)
      | map({
          slug: .[0].slug,
          total_reviews: length,
          average: (
            (map(.rating) | add / length) * 10 | floor / 10
          ),
          distribution: (
            reduce .[] as $r (
              {"5": 0, "4": 0, "3": 0, "2": 0, "1": 0};
              .[$r.rating | tostring] += 1
            )
          ),
          last_calculated: (now | strftime("%Y-%m-%dT%H:%M:%SZ"))
        })
      | {ratings: .}
    ' "$POST_REVIEWS" > "$POST_RATINGS"

    echo -e "${GREEN}  ✓ Updated $POST_RATINGS${NC}"
    echo ""
else
    echo -e "${YELLOW}  ⊘ Post reviews file not found (skipping)${NC}"
    echo ""
fi

echo "=================================================="
echo -e "${GREEN}Rating calculation complete!${NC}"
echo ""
echo "Next steps:"
echo "  1. Review changes: git diff _data/"
echo "  2. Test locally: ./rebuild.sh"
echo "  3. Commit: git add _data/ && git commit -m 'Update ratings'"
echo "  4. Deploy: git push"
echo "=================================================="
