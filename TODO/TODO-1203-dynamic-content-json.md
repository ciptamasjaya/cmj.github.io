# TODO-1203: Dynamic Content on Static Pages (Reviews, Ratings, Comments)

**Created**: 2025-11-25
**Updated**: 2025-11-25 (v2 - Simplified)
**Priority**: High
**Context**: Add dynamic user-generated content (reviews, ratings, comments) to static GitHub Pages site
**Goal**: Enable "rotating" dynamic content on static pages - reviews update, ratings change, testimonials rotate

---

## Milestone: Dynamic Content on Static Site 🎯

```
┌──────────────────────────────────────────────────┐
│  Static HTML (Jekyll + GitHub Pages)             │
│  ┌────────────────────────────────────────────┐  │
│  │  Service Page                              │  │
│  │  ────────────────────────────────────      │  │
│  │  [Static Content] ← YAML .md files        │  │
│  │  - Service intro, jenis, proses           │  │
│  │                                            │  │
│  │  [Dynamic Content] ← JSON files           │  │
│  │  ★★★★★ 4.8 (15 reviews) ← Updates!       │  │
│  │  💬 Latest reviews ← Rotates!             │  │
│  │  👤 Featured testimonial ← Changes!       │  │
│  └────────────────────────────────────────────┘  │
│                                                   │
│  Edit JSON → Git Push → Auto Rebuild → Updated!  │
└──────────────────────────────────────────────────┘
```

---

## Status Summary

- **Total Components**: 6 JSON files + 4 components + 3 scripts
- **Completed**: 0 ❌ (0%)
- **In Progress**: 0 ⚠️ (0%)
- **Not Started**: 13 ❌ (100%)
- **Progress**: 0%

---

## What Stays in YAML (NO CHANGES) ✅

```yaml
# _services/riksa-uji-forklift.md (TETAP SEPERTI SEKARANG)
---
layout: page--subcategory
title: "Riksa Uji Forklift"
description: "..."
permalink: /layanan/.../

# Content blocks (TIDAK BERUBAH)
intro:
  h1: "..."
  para_1: "..."

jenis_forklift:
  h2: "..."
  sub_categories: [...]

mengapa_penting:
  h2: "..."
  para: "..."
---
```

**No migration needed!** Existing content stays as-is.

---

## File Structure - Pattern: type--content.json

```
_data/
  ├── review--service.json      # Reviews for services
  ├── rating--service.json      # Ratings for services (calculated)
  ├── comment--service.json     # Comments/Q&A for services
  │
  ├── review--post.json         # Reviews for blog posts
  ├── rating--post.json         # Ratings for blog posts (calculated)
  └── comment--post.json        # Comments for blog posts
```

**Benefits**:
- ✅ Clear separation by content type
- ✅ No need for `target_type` field
- ✅ Easy to query: `site.data.review--service`
- ✅ Scalable: Add `review--product.json` later
- ✅ Small file sizes (split by type)

---

## JSON Files to Create

### 1. ❌ _data/review--service.json
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Store user reviews for services

**Structure**:
```json
{
  "_meta": {
    "last_review_id": 15,
    "last_updated": "2025-11-25T10:30:00Z"
  },
  "reviews": [
    {
      "id": 1,
      "slug": "riksa-uji-forklift",
      "author": "Budi Santoso",
      "rating": 5,
      "title": "Pelayanan Sangat Profesional",
      "content": "Tim inspector sangat kompeten dan peralatan testing lengkap. Proses riksa uji berjalan lancar dan hasil dokumentasi sangat detail. Highly recommended!",
      "verified": true,
      "featured": true,
      "helpful_count": 12,
      "created_at": "2025-11-20T10:00:00Z"
    },
    {
      "id": 2,
      "slug": "riksa-uji-forklift",
      "author": "Andi Wijaya",
      "rating": 5,
      "title": "Cepat dan Profesional",
      "content": "Proses booking mudah, tim datang tepat waktu, dan hasil sertifikat cepat keluar. Sangat puas dengan layanannya.",
      "verified": true,
      "featured": false,
      "helpful_count": 8,
      "created_at": "2025-11-22T14:30:00Z"
    }
  ]
}
```

**Fields**:
- `id`: Unique review ID (auto-increment)
- `slug`: Service slug (e.g., "riksa-uji-forklift")
- `author`: Person name only (simple)
- `rating`: 1-5 stars
- `title`: Short review title
- `content`: Full review text
- `verified`: Show verified badge
- `featured`: Show on homepage
- `helpful_count`: Number of helpful votes (future feature)
- `created_at`: ISO 8601 timestamp

**Tasks**:
- [ ] Create `_data/review--service.json`
- [ ] Add 10-15 sample reviews
- [ ] Add reviews for 3-5 different services
- [ ] Test display on service page

---

### 2. ❌ _data/rating--service.json
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Aggregate ratings for services (auto-calculated from reviews)

**Structure**:
```json
{
  "ratings": [
    {
      "slug": "riksa-uji-forklift",
      "average": 4.8,
      "total_reviews": 15,
      "distribution": {
        "5": 12,
        "4": 2,
        "3": 1,
        "2": 0,
        "1": 0
      },
      "last_calculated": "2025-11-25T10:00:00Z"
    },
    {
      "slug": "riksa-uji-crane",
      "average": 4.9,
      "total_reviews": 8,
      "distribution": {
        "5": 7,
        "4": 1,
        "3": 0,
        "2": 0,
        "1": 0
      },
      "last_calculated": "2025-11-25T10:00:00Z"
    }
  ]
}
```

**How it works**:
1. Add review to `review--service.json`
2. Run `./scripts/calculate-ratings.sh`
3. Script reads reviews, groups by slug
4. Calculates average and distribution
5. Updates `rating--service.json`
6. Git push → Site rebuilds with new ratings!

**Tasks**:
- [ ] Create `_data/rating--service.json`
- [ ] Calculate from sample reviews
- [ ] Test rating display

---

### 3. ❌ _data/comment--service.json
**Status**: Not Started
**Priority**: MEDIUM
**Purpose**: Q&A comments on service pages

**Structure**:
```json
{
  "_meta": {
    "last_comment_id": 45,
    "last_updated": "2025-11-25T10:30:00Z"
  },
  "comments": [
    {
      "id": 1,
      "slug": "riksa-uji-forklift",
      "parent_comment_id": null,
      "author": "Budi Santoso",
      "content": "Pertanyaan: Berapa lama proses riksa uji forklift biasanya?",
      "created_at": "2025-11-23T14:30:00Z"
    },
    {
      "id": 2,
      "slug": "riksa-uji-forklift",
      "parent_comment_id": 1,
      "author": "Admin CMJ",
      "content": "Terima kasih atas pertanyaannya. Proses riksa uji forklift biasanya memakan waktu 1-2 hari kerja, tergantung kondisi unit dan kelengkapan dokumen.",
      "created_at": "2025-11-23T15:00:00Z"
    }
  ]
}
```

**Features**:
- Threaded comments (parent-child via `parent_comment_id`)
- Simple Q&A format
- Admin can reply

**Tasks**:
- [ ] Create `_data/comment--service.json`
- [ ] Add sample Q&A
- [ ] Test threaded display

---

### 4. ❌ _data/review--post.json
**Status**: Not Started
**Priority**: LOW (Future)
**Purpose**: Reviews for blog articles

**Structure**:
```json
{
  "_meta": {
    "last_review_id": 5,
    "last_updated": "2025-11-25T10:30:00Z"
  },
  "reviews": [
    {
      "id": 1,
      "slug": "pentingnya-riksa-uji-k3",
      "author": "Ahmad Fauzi",
      "rating": 5,
      "title": "Artikel Sangat Informatif",
      "content": "Penjelasan sangat lengkap dan mudah dipahami. Terima kasih!",
      "verified": false,
      "featured": true,
      "helpful_count": 8,
      "created_at": "2025-11-24T10:00:00Z"
    }
  ]
}
```

**Tasks**:
- [ ] Create `_data/review--post.json`
- [ ] Add sample reviews
- [ ] Test on blog posts

---

### 5. ❌ _data/rating--post.json
**Status**: Not Started
**Priority**: LOW (Future)
**Purpose**: Aggregate ratings for blog posts

**Structure**: Same as `rating--service.json` but for posts

**Tasks**:
- [ ] Create `_data/rating--post.json`
- [ ] Calculate from post reviews
- [ ] Test display

---

### 6. ❌ _data/comment--post.json
**Status**: Not Started
**Priority**: LOW (Future)
**Purpose**: Comments on blog articles

**Structure**: Same as `comment--service.json` but for posts

**Tasks**:
- [ ] Create `_data/comment--post.json`
- [ ] Add sample comments
- [ ] Test display

---

## Components to Create

### 7. ❌ _includes/components/rating-stars.html
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Display star rating

**Usage**:
```liquid
{% assign rating = site.data.rating--service.ratings | where: "slug", page_slug | first %}
{% include components/rating-stars.html rating=rating size="md" %}
```

**Output**:
```html
<div class="rating-stars">
  <span class="stars">★★★★★</span>
  <span class="rating-text">4.8 (15 ulasan)</span>
</div>
```

**Parameters**:
- `rating`: Rating object from JSON
- `size`: "sm", "md", "lg" (optional, default: "md")

**Tasks**:
- [ ] Create component file
- [ ] Implement star rendering (full/half/empty)
- [ ] Add CSS for stars
- [ ] Support different sizes
- [ ] Test with various ratings

---

### 8. ❌ _includes/components/rating-summary.html
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Show rating summary with distribution bars

**Usage**:
```liquid
{% include components/rating-summary.html rating=rating %}
```

**Output**:
```html
<div class="rating-summary">
  <div class="rating-score">4.8</div>
  <div class="rating-stars">★★★★★</div>
  <div class="rating-count">15 ulasan</div>

  <div class="rating-distribution">
    <div class="bar">5★ [████████████████████] 12</div>
    <div class="bar">4★ [████                ] 2</div>
    <div class="bar">3★ [██                  ] 1</div>
  </div>
</div>
```

**Tasks**:
- [ ] Create component file
- [ ] Implement distribution bars
- [ ] Add CSS for bars
- [ ] Calculate percentages
- [ ] Test display

---

### 9. ❌ _includes/components/review-list.html
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Display list of reviews

**Usage**:
```liquid
{% assign reviews = site.data.review--service.reviews | where: "slug", page_slug %}
{% include components/review-list.html reviews=reviews limit=5 %}
```

**Output**:
```html
<div class="review-list">
  <div class="review-card">
    <div class="review-header">
      <strong>Budi Santoso</strong> <span class="verified">✓</span>
      <div class="stars">★★★★★</div>
    </div>
    <h4>Pelayanan Sangat Profesional</h4>
    <p>Tim inspector sangat kompeten...</p>
    <footer>
      <span class="date">20 Nov 2025</span>
      <span class="helpful">👍 12</span>
    </footer>
  </div>
</div>
```

**Parameters**:
- `reviews`: Array of reviews
- `limit`: Max reviews to show (optional)

**Tasks**:
- [ ] Create component file
- [ ] Design review card layout
- [ ] Add verified badge
- [ ] Sort by date (newest first)
- [ ] Add CSS
- [ ] Test with multiple reviews

---

### 10. ❌ _includes/components/comment-thread.html
**Status**: Not Started
**Priority**: MEDIUM
**Purpose**: Display threaded comments

**Usage**:
```liquid
{% assign comments = site.data.comment--service.comments | where: "slug", page_slug %}
{% include components/comment-thread.html comments=comments %}
```

**Features**:
- Nested comment display
- Reply indentation
- Simple threading

**Tasks**:
- [ ] Create component file
- [ ] Implement threading logic
- [ ] Add CSS for nesting
- [ ] Test with nested comments

---

## Helper Scripts

### 11. ❌ scripts/calculate-ratings.sh
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Calculate aggregate ratings from reviews

**Script**:
```bash
#!/bin/bash

echo "Calculating ratings..."

# Calculate service ratings
jq '
  .reviews
  | group_by(.slug)
  | map({
      slug: .[0].slug,
      total_reviews: length,
      average: (map(.rating) | add / length | . * 10 | round / 10),
      distribution: (
        group_by(.rating)
        | map({(.[0].rating | tostring): length})
        | add
      ),
      last_calculated: now | strftime("%Y-%m-%dT%H:%M:%SZ")
    })
  | {ratings: .}
' _data/review--service.json > _data/rating--service.json

echo "✓ Service ratings updated"

# Calculate post ratings
jq '
  .reviews
  | group_by(.slug)
  | map({
      slug: .[0].slug,
      total_reviews: length,
      average: (map(.rating) | add / length | . * 10 | round / 10),
      distribution: (
        group_by(.rating)
        | map({(.[0].rating | tostring): length})
        | add
      ),
      last_calculated: now | strftime("%Y-%m-%dT%H:%M:%SZ")
    })
  | {ratings: .}
' _data/review--post.json > _data/rating--post.json

echo "✓ Post ratings updated"
```

**Usage**:
```bash
./scripts/calculate-ratings.sh
```

**Tasks**:
- [ ] Create script file
- [ ] Make executable (chmod +x)
- [ ] Test calculation accuracy
- [ ] Handle edge cases (no reviews, single review)
- [ ] Document usage

---

### 12. ❌ scripts/add-review.sh
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Interactive script to add new review

**Script**:
```bash
#!/bin/bash

echo "=== Add New Review ==="
echo

# Choose type
echo "Review for:"
echo "1) Service"
echo "2) Blog Post"
read -p "Choice (1 or 2): " TYPE

if [ "$TYPE" == "1" ]; then
  FILE="_data/review--service.json"
else
  FILE="_data/review--post.json"
fi

read -p "Slug: " SLUG
read -p "Author: " AUTHOR
read -p "Rating (1-5): " RATING
read -p "Title: " TITLE
read -p "Content: " CONTENT
read -p "Verified? (y/n): " VERIFIED
read -p "Featured? (y/n): " FEATURED

# Get next ID
LAST_ID=$(jq '._meta.last_review_id' $FILE)
NEW_ID=$((LAST_ID + 1))

# Convert y/n to boolean
[[ "$VERIFIED" == "y" ]] && VERIFIED="true" || VERIFIED="false"
[[ "$FEATURED" == "y" ]] && FEATURED="true" || FEATURED="false"

# Add review to JSON
jq --arg id "$NEW_ID" \
   --arg slug "$SLUG" \
   --arg author "$AUTHOR" \
   --arg rating "$RATING" \
   --arg title "$TITLE" \
   --arg content "$CONTENT" \
   --argjson verified "$VERIFIED" \
   --argjson featured "$FEATURED" \
   '.reviews += [{
     id: ($id | tonumber),
     slug: $slug,
     author: $author,
     rating: ($rating | tonumber),
     title: $title,
     content: $content,
     verified: $verified,
     featured: $featured,
     helpful_count: 0,
     created_at: (now | strftime("%Y-%m-%dT%H:%M:%SZ"))
   }] | ._meta.last_review_id = ($id | tonumber)' \
   $FILE > $FILE.tmp

mv $FILE.tmp $FILE

echo
echo "✓ Review added (ID: $NEW_ID)"
echo "✓ Now run: ./scripts/calculate-ratings.sh"
```

**Usage**:
```bash
./scripts/add-review.sh
# Follow prompts
```

**Tasks**:
- [ ] Create script file
- [ ] Make executable
- [ ] Test with valid input
- [ ] Test with invalid input
- [ ] Document usage

---

### 13. ❌ scripts/add-comment.sh
**Status**: Not Started
**Priority**: MEDIUM
**Purpose**: Interactive script to add comment

**Script**:
```bash
#!/bin/bash

echo "=== Add New Comment ==="
echo

# Choose type
echo "Comment on:"
echo "1) Service"
echo "2) Blog Post"
read -p "Choice (1 or 2): " TYPE

if [ "$TYPE" == "1" ]; then
  FILE="_data/comment--service.json"
else
  FILE="_data/comment--post.json"
fi

read -p "Slug: " SLUG
read -p "Author: " AUTHOR
read -p "Content: " CONTENT
read -p "Reply to comment ID (or leave empty): " PARENT_ID

# Get next ID
LAST_ID=$(jq '._meta.last_comment_id' $FILE)
NEW_ID=$((LAST_ID + 1))

# Set parent_id
if [ -z "$PARENT_ID" ]; then
  PARENT_JSON="null"
else
  PARENT_JSON="$PARENT_ID"
fi

# Add comment
jq --arg id "$NEW_ID" \
   --arg slug "$SLUG" \
   --arg author "$AUTHOR" \
   --arg content "$CONTENT" \
   --argjson parent "$PARENT_JSON" \
   '.comments += [{
     id: ($id | tonumber),
     slug: $slug,
     parent_comment_id: $parent,
     author: $author,
     content: $content,
     created_at: (now | strftime("%Y-%m-%dT%H:%M:%SZ"))
   }] | ._meta.last_comment_id = ($id | tonumber)' \
   $FILE > $FILE.tmp

mv $FILE.tmp $FILE

echo
echo "✓ Comment added (ID: $NEW_ID)"
```

**Usage**:
```bash
./scripts/add-comment.sh
# Follow prompts
```

**Tasks**:
- [ ] Create script file
- [ ] Make executable
- [ ] Test comment threading
- [ ] Document usage

---

## Implementation Plan

### Phase 1: Foundation (Week 1)
**Goal**: Create JSON files and basic components

**Tasks**:
- [ ] Create `review--service.json` with 10 sample reviews
- [ ] Create `rating--service.json` (calculated)
- [ ] Create `comment--service.json` with sample Q&A
- [ ] Create `components/rating-stars.html`
- [ ] Create `components/review-list.html`
- [ ] Create `scripts/calculate-ratings.sh`
- [ ] Test on one service page
- [ ] Commit Phase 1

**Deliverable**: Working reviews on one service page

**Test**:
```bash
./rebuild.sh
# Visit: /layanan/riksa-uji-pesawat-angkat-angkut/riksa-uji-forklift/
# Should see: Rating + reviews
```

---

### Phase 2: Integration (Week 2)
**Goal**: Add to all service pages

**Tasks**:
- [ ] Create `components/rating-summary.html`
- [ ] Update `_layouts/page--subcategory.html` to show reviews
- [ ] Add reviews for 5 services (2-3 reviews each)
- [ ] Create `scripts/add-review.sh`
- [ ] Test workflow: add review → calculate → rebuild
- [ ] Commit Phase 2

**Deliverable**: All service pages have review sections

---

### Phase 3: Homepage Features (Week 3)
**Goal**: Add featured reviews to homepage

**Tasks**:
- [ ] Add featured reviews section to homepage
- [ ] Add "latest reviews" widget
- [ ] Test review rotation
- [ ] Commit Phase 3

**Deliverable**: Homepage shows dynamic testimonials

---

### Phase 4: Comments (Week 4)
**Goal**: Add Q&A commenting

**Tasks**:
- [ ] Create `components/comment-thread.html`
- [ ] Create `scripts/add-comment.sh`
- [ ] Add comments to service pages
- [ ] Test threaded comments
- [ ] Commit Phase 4

**Deliverable**: Working Q&A system

---

### Phase 5: Blog Posts (Week 5 - Optional)
**Goal**: Add reviews/comments to blog

**Tasks**:
- [ ] Create `review--post.json`
- [ ] Create `rating--post.json`
- [ ] Create `comment--post.json`
- [ ] Update blog layout
- [ ] Test on blog posts
- [ ] Commit Phase 5

**Deliverable**: Blog posts have reviews/comments

---

## Template Integration

### Service Page Layout
```liquid
<!-- _layouts/page--subcategory.html -->

<!-- Existing content blocks (UNCHANGED) -->
<section id="intro">
  {% include block-templates/block--service-intro.html data=page.intro %}
</section>

<section id="jenis">
  {% include block-templates/block--h2-subcategories.html data=page.jenis_forklift %}
</section>

<!-- NEW: Reviews Section -->
{% assign page_slug = page.permalink | split: "/" | last %}
{% assign reviews = site.data.review--service.reviews | where: "slug", page_slug %}
{% assign rating = site.data.rating--service.ratings | where: "slug", page_slug | first %}

{% if rating and rating.total_reviews > 0 %}
<section id="reviews" class="mt-5 bg-light py-5">
  <div class="container">
    <h2 class="mb-4">
      <i class="bi bi-star-fill text-warning me-2"></i>
      Rating & Ulasan
    </h2>

    <div class="row">
      <div class="col-lg-4">
        {% include components/rating-summary.html rating=rating %}
      </div>
      <div class="col-lg-8">
        {% include components/review-list.html reviews=reviews limit=5 %}
      </div>
    </div>
  </div>
</section>
{% endif %}

<!-- NEW: Comments Section -->
{% assign comments = site.data.comment--service.comments | where: "slug", page_slug %}
{% if comments.size > 0 %}
<section id="comments" class="mt-5">
  <div class="container">
    <h2 class="mb-4">
      <i class="bi bi-chat-dots me-2"></i>
      Tanya Jawab
    </h2>
    {% include components/comment-thread.html comments=comments %}
  </div>
</section>
{% endif %}
```

---

### Homepage Featured Review
```liquid
<!-- index.html -->

<section class="testimonials py-5">
  <div class="container">
    <h2 class="text-center mb-5">Apa Kata Klien Kami?</h2>

    {% assign featured = site.data.review--service.reviews | where: "featured", true %}
    {% assign random_index = "now" | date: "%s" | modulo: featured.size %}
    {% assign review = featured[random_index] %}

    <blockquote class="review-featured">
      <div class="stars mb-3">
        {% for i in (1..review.rating) %}⭐{% endfor %}
      </div>
      <p class="lead">"{{ review.content | truncate: 200 }}"</p>
      <footer>
        <strong>{{ review.author }}</strong>
      </footer>
    </blockquote>
  </div>
</section>
```

**Result**: Different review each rebuild! 🔄

---

## Workflow: Adding New Review

### Step 1: User submits review
```
Via email, WhatsApp, or form
```

### Step 2: Add to JSON
```bash
cd /home/mkt01/Public/cmj.github/public_html

./scripts/add-review.sh
# Follow prompts:
# - Type: 1 (Service)
# - Slug: riksa-uji-forklift
# - Author: Budi Santoso
# - Rating: 5
# - Title: Great service!
# - Content: Very professional...
# - Verified: y
# - Featured: n
```

### Step 3: Calculate ratings
```bash
./scripts/calculate-ratings.sh
# ✓ Service ratings updated
```

### Step 4: Test locally
```bash
./rebuild.sh
# Visit service page, check review appears
```

### Step 5: Deploy
```bash
git add _data/review--service.json _data/rating--service.json
git commit -m "Add review for Riksa Uji Forklift"
git push origin main
```

### Step 6: Auto-deploy
```
GitHub Actions → Jekyll build → Deploy to Pages
→ Review is LIVE! 🎉
```

---

## Benefits

### ✅ Dynamic Feel on Static Site
- Reviews update via git push
- Ratings recalculate automatically
- Featured reviews rotate on each build
- Latest reviews always current

### ✅ Simple Structure
- Only 6 JSON files (3 for services, 3 for posts)
- Pattern: `type--content.json`
- No complex relationships
- Easy to understand

### ✅ Version Control
- Every review tracked in git
- Can rollback spam
- Full audit trail
- See who added what when

### ✅ Free & Fast
- GitHub Pages = $0
- Static HTML = lightning fast
- No database costs
- No backend vulnerabilities

### ✅ SEO Friendly
- Reviews in HTML (crawlable)
- Schema.org markup possible
- Rich snippets in Google
- Social proof

---

## Testing Checklist

### Per Component
- [ ] Renders with valid data
- [ ] Handles empty data gracefully
- [ ] Handles missing fields
- [ ] CSS styles correct
- [ ] Responsive on mobile
- [ ] No console errors

### Integration Tests
- [ ] Reviews display on service page
- [ ] Ratings calculate correctly
- [ ] Featured review rotates
- [ ] Comments thread properly
- [ ] Service cards show ratings
- [ ] Empty state handled

### Data Tests
- [ ] calculate-ratings.sh accurate
- [ ] add-review.sh creates valid JSON
- [ ] No duplicate IDs
- [ ] All slugs valid

---

## Progress Tracking

### Week 1: Foundation
**Target**: 2025-12-02

- [ ] review--service.json
- [ ] rating--service.json
- [ ] comment--service.json
- [ ] rating-stars.html
- [ ] review-list.html
- [ ] calculate-ratings.sh
- [ ] Test on one service

**Completion**: 0/7

---

### Week 2: Integration
**Target**: 2025-12-09

- [ ] rating-summary.html
- [ ] Update page--subcategory.html
- [ ] Add reviews to 5 services
- [ ] add-review.sh
- [ ] Test workflow

**Completion**: 0/5

---

### Week 3: Homepage
**Target**: 2025-12-16

- [ ] Featured section on homepage
- [ ] Latest reviews widget
- [ ] Test rotation

**Completion**: 0/3

---

### Week 4: Comments
**Target**: 2025-12-23

- [ ] comment-thread.html
- [ ] add-comment.sh
- [ ] Test Q&A

**Completion**: 0/3

---

### Week 5: Blog (Optional)
**Target**: 2025-12-30

- [ ] review--post.json
- [ ] rating--post.json
- [ ] comment--post.json
- [ ] Update blog layout

**Completion**: 0/4

---

## Related TODOs

- **TODO-1204**: Template migration (components created here)
- **TODO-1205**: Automation tools (scripts created here)
- **TODO-1202**: Data-driven blocks (complementary)

---

## Notes

- **Simple pattern**: `type--content.json` for all data files
- **No migration**: Existing .md files unchanged
- **Git as CMS**: Version control all user content
- **Free forever**: GitHub Pages hosting
- **Progressive**: Start simple, enhance later

---

## Success Criteria

1. ✅ Reviews display on service pages
2. ✅ Ratings show on service cards
3. ✅ Featured testimonial on homepage (rotates)
4. ✅ Easy workflow to add reviews
5. ✅ Automatic rating calculation
6. ✅ All via git push (no manual HTML)

**Result**: Static site with dynamic feel! 🚀

---

**Last Updated**: 2025-11-25 v2
**Next Review**: After Phase 1 completion
**Owner**: Development Team
