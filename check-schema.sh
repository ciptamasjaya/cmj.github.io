#!/bin/bash
# Schema Checker for Jekyll Site
# Usage: ./check-schema.sh [page-path]
# Example: ./check-schema.sh 2025/05/25/pjk3-bekasi

PAGE_PATH="${1:-2025/05/25/pjk3-bekasi}"
HTML_FILE="_site/${PAGE_PATH}/index.html"

echo "═══════════════════════════════════════════════"
echo "  Schema Checker - PT. Cipta Mas Jaya"
echo "═══════════════════════════════════════════════"
echo ""
echo "Page: ${PAGE_PATH}"
echo "File: ${HTML_FILE}"
echo ""

if [ ! -f "$HTML_FILE" ]; then
    echo "❌ File not found! Run ./rebuild.sh first."
    exit 1
fi

# Count total schemas
TOTAL=$(grep -o '<script type="application/ld+json">' "$HTML_FILE" | wc -l)
echo "📊 Total Schema JSON-LD: ${TOTAL}"
echo ""

echo "═══════════════════════════════════════════════"
echo "  Check for Raw Code Leaks"
echo "═══════════════════════════════════════════════"

# Check for Ruby hash syntax (=>)
RUBY_HASH=$(grep -c '=>' "$HTML_FILE" 2>/dev/null | head -1)
RUBY_HASH=${RUBY_HASH:-0}
if [ "$RUBY_HASH" -gt 0 ] 2>/dev/null; then
    echo "  ❌ Found Ruby hash syntax (=>) : ${RUBY_HASH} occurrences"
    echo "     Locations:"
    grep -n '=>' "$HTML_FILE" | head -5
else
    echo "  ✓ No Ruby hash syntax (=>) found"
fi

# Check for Liquid tags
LIQUID_TAGS=$(grep -cE '\{%|\{\{' "$HTML_FILE" 2>/dev/null | head -1)
LIQUID_TAGS=${LIQUID_TAGS:-0}
if [ "$LIQUID_TAGS" -gt 0 ] 2>/dev/null; then
    echo "  ❌ Found Liquid tags: ${LIQUID_TAGS} occurrences"
else
    echo "  ✓ No Liquid tags found"
fi

# Check for unescaped quotes in JSON
BROKEN_JSON=$(grep -cE '"""|""\s*:' "$HTML_FILE" 2>/dev/null | head -1)
BROKEN_JSON=${BROKEN_JSON:-0}
if [ "$BROKEN_JSON" -gt 0 ] 2>/dev/null; then
    echo "  ⚠ Possible broken JSON quotes: ${BROKEN_JSON} occurrences"
else
    echo "  ✓ No obvious broken JSON quotes"
fi

echo ""
echo "═══════════════════════════════════════════════"
echo "  WebPageElement hasPart References"
echo "═══════════════════════════════════════════════"

# Check hasPart references in Article
grep -oP '#[a-z0-9-]+(?=")' "$HTML_FILE" 2>/dev/null | grep -E "section|intro|conclusion|hero" | sort -u | while read id; do
    echo "  → $id"
done

echo ""
echo "═══════════════════════════════════════════════"
echo "  WebPageElement Schemas (with content check)"
echo "═══════════════════════════════════════════════"

# List of expected WebPageElement @ids
EXPECTED_IDS=(
    "#hero-pjk3"
    "#company-intro"
    "#services-section"
    "#tips-section"
    "#risks-section"
    "#roles-section"
    "#about-city-section"
    "#business-section"
    "#coverage-section"
    "#testimonials-section"
    "#faq-section"
    "#video-section"
    "#order-section"
    "#conclusion"
)

for id in "${EXPECTED_IDS[@]}"; do
    if grep -q "\"@id\".*${id}\"" "$HTML_FILE" 2>/dev/null; then
        # Check if it has text content
        if grep -A10 "${id}" "$HTML_FILE" 2>/dev/null | grep -q '"text"'; then
            echo "  ✓ $id (has text)"
        elif grep -A10 "${id}" "$HTML_FILE" 2>/dev/null | grep -q '"name"'; then
            echo "  ⚠ $id (name only, no text)"
        else
            echo "  ❌ $id (no content)"
        fi
    else
        echo "  ❌ $id (missing)"
    fi
done

echo ""
echo "═══════════════════════════════════════════════"
echo "  Done!"
echo "═══════════════════════════════════════════════"
