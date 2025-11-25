# TODO-1204: Template Migration for JSON Data Structure

**Created**: 2025-11-25
**Updated**: 2025-11-26
**Priority**: ~~High~~ SUPERSEDED
**Status**: SUPERSEDED BY TODO-1203
**Context**: Update Jekyll templates to read from centralized JSON files instead of YAML frontmatter
**Goal**: All layouts and includes read from JSON data structure
**Depends On**: TODO-1203 (JSON Node Architecture)

---

## SUPERSEDED NOTICE

> **This TODO has been superseded by TODO-1203.**
>
> The original goal was to migrate entirely to JSON data structure. However, a **hybrid approach** was implemented instead:
>
> - **YAML frontmatter**: Static content (service descriptions, intro, process, etc.)
> - **JSON data files**: Dynamic content (reviews, ratings, comments)
>
> This hybrid approach is better because:
> 1. No need to migrate existing content
> 2. YAML is easier for content editors
> 3. JSON is perfect for dynamic/calculated data
> 4. Existing layouts work with minimal changes

---

## Status Summary

- **Total Templates**: 12
- **Completed via TODO-1203**: 6 ✅
- **Not Needed (architecture change)**: 3 ❌
- **Optional (future)**: 3 ⏳
- **Progress**: SUPERSEDED

---

## Template Architecture

### Current (YAML Frontmatter)
```liquid
<!-- _layouts/node--service.html -->
{{ page.title }}
{{ page.description }}
{{ page.intro.h1 }}
```

### Target (JSON Data)
```liquid
<!-- _layouts/node--service.html -->
{% assign service = site.data.node--service.services | where: "slug", page.slug | first %}
{% assign node = site.data.node.nodes | where: "id", service.node_id | first %}

{{ node.title }}
{{ service.description }}
{{ service.intro.h1 }}
```

---

## Templates to Create/Update

### NEW LAYOUTS (3 files)

#### 1. ❌ _layouts/json--service.html
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Render service pages from JSON data

**Features**:
- [ ] Read service data from `site.data.node--service`
- [ ] Lookup by `page.slug` or `page.node_id`
- [ ] Render service intro blocks
- [ ] Display service content
- [ ] Show related services
- [ ] Display reviews and ratings
- [ ] Include breadcrumbs
- [ ] Schema.org structured data

**Data Sources**:
- `site.data.node` - Node metadata
- `site.data.node--service` - Service details
- `site.data.category` - Category info
- `site.data.review` - Customer reviews
- `site.data.rating` - Aggregate ratings

**Tasks**:
- [ ] Create file `_layouts/json--service.html`
- [ ] Implement service lookup logic
- [ ] Handle service not found (404)
- [ ] Render all service sections
- [ ] Add JSON-LD schema
- [ ] Test with one service
- [ ] Test with all services
- [ ] Document usage

---

#### 2. ❌ _layouts/json--article.html
**Status**: Not Started
**Priority**: MEDIUM
**Purpose**: Render article/blog pages from JSON data

**Features**:
- [ ] Read article data from `site.data.node--article`
- [ ] Display article content
- [ ] Show author info
- [ ] Display article metadata (date, reading time)
- [ ] Show related articles
- [ ] Show related services
- [ ] Display comments (future)
- [ ] Schema.org article markup

**Data Sources**:
- `site.data.node` - Node metadata
- `site.data.node--article` - Article details
- `site.data.category` - Article categories
- `site.data.comment` - Article comments

**Tasks**:
- [ ] Create file `_layouts/json--article.html`
- [ ] Implement article lookup logic
- [ ] Render article content
- [ ] Add related content section
- [ ] Add JSON-LD schema
- [ ] Test with sample articles
- [ ] Document usage

---

#### 3. ❌ _layouts/json--category.html
**Status**: Not Started
**Priority**: MEDIUM
**Purpose**: Render category listing pages from JSON

**Features**:
- [ ] Read category data from `site.data.category`
- [ ] List all services in category
- [ ] Support subcategories
- [ ] Display category description
- [ ] Filter by category type
- [ ] Pagination support

**Data Sources**:
- `site.data.category` - Category info
- `site.data.node--service` - Services to list

**Tasks**:
- [ ] Create file `_layouts/json--category.html`
- [ ] Implement category lookup
- [ ] List services by category_id
- [ ] Handle parent-child categories
- [ ] Add breadcrumbs
- [ ] Test category pages
- [ ] Document usage

---

### UPDATED INCLUDES (9 files)

#### 4. ❌ _includes/components/review-list.html
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Display reviews for a service

**Features**:
- [ ] Filter reviews by service_id
- [ ] Sort by date (newest first)
- [ ] Show verified badge
- [ ] Display star rating
- [ ] Pagination or "load more"
- [ ] Empty state message

**Usage**:
```liquid
{% include components/review-list.html service_id=1 limit=5 %}
```

**Tasks**:
- [ ] Create file `_includes/components/review-list.html`
- [ ] Implement review filtering
- [ ] Design review card layout
- [ ] Add verified badge styling
- [ ] Test with multiple reviews
- [ ] Test with no reviews
- [ ] Document parameters

---

#### 5. ❌ _includes/components/rating-stars.html
**Status**: Not Started
**Priority**: HIGH
**Purpose**: Display star rating component

**Features**:
- [ ] Show filled/empty stars
- [ ] Display average rating
- [ ] Show review count
- [ ] Support half stars
- [ ] Different sizes (sm, md, lg)
- [ ] Clickable or static

**Usage**:
```liquid
{% include components/rating-stars.html service_id=1 size="md" %}
```

**Tasks**:
- [ ] Create file `_includes/components/rating-stars.html`
- [ ] Implement star rendering logic
- [ ] Add CSS for star display
- [ ] Support different sizes
- [ ] Test various ratings (4.8, 3.5, etc)
- [ ] Document parameters

---

#### 6. ❌ _includes/components/rating-distribution.html
**Status**: Not Started
**Priority**: MEDIUM
**Purpose**: Show rating distribution bars

**Features**:
- [ ] Display 5-star to 1-star breakdown
- [ ] Show percentage bars
- [ ] Display count per rating
- [ ] Clickable to filter reviews

**Usage**:
```liquid
{% include components/rating-distribution.html service_id=1 %}
```

**Tasks**:
- [ ] Create file
- [ ] Implement bar chart logic
- [ ] Add CSS for bars
- [ ] Calculate percentages
- [ ] Test with various distributions
- [ ] Document parameters

---

#### 7. ❌ _includes/components/comment-thread.html
**Status**: Not Started
**Priority**: LOW (Future)
**Purpose**: Display threaded comments

**Features**:
- [ ] Show parent comments
- [ ] Nest child comments (replies)
- [ ] Support multiple nesting levels
- [ ] Display author info
- [ ] Show timestamps
- [ ] Reply button (future)

**Usage**:
```liquid
{% include components/comment-thread.html node_id=1 %}
```

**Tasks**:
- [ ] Create file
- [ ] Implement threading logic
- [ ] Design comment layout
- [ ] Add reply nesting CSS
- [ ] Test with nested comments
- [ ] Document parameters

---

#### 8. ❌ _includes/components/service-card.html
**Status**: Update existing
**Priority**: HIGH
**Purpose**: Service card for listings (update to use JSON)

**Current**: Reads from `include.service` parameter
**Target**: Also support `service_id` parameter

**New Usage**:
```liquid
{% include components/service-card.html service_id=1 %}
```

**Tasks**:
- [ ] Add support for `service_id` parameter
- [ ] Lookup service from `site.data.node--service`
- [ ] Fetch rating from `site.data.rating`
- [ ] Display rating stars
- [ ] Show review count
- [ ] Maintain backward compatibility
- [ ] Test both modes (param vs id)

---

#### 9. ❌ _includes/components/article-card.html
**Status**: Update existing or create new
**Priority**: MEDIUM
**Purpose**: Article card for blog listings

**Features**:
- [ ] Display article title
- [ ] Show excerpt
- [ ] Featured image
- [ ] Author and date
- [ ] Reading time
- [ ] Category badges
- [ ] Related service link

**Usage**:
```liquid
{% include components/article-card.html article_id=1 %}
```

**Tasks**:
- [ ] Create or update file
- [ ] Lookup article from JSON
- [ ] Design card layout
- [ ] Add category badges
- [ ] Test with various articles
- [ ] Document parameters

---

#### 10. ❌ _includes/reusable/block--services-grid.html
**Status**: Update existing
**Priority**: HIGH
**Purpose**: Update to read from node--service.json

**Current**: Reads from `site.data.services` (YAML)
**Target**: Read from `site.data.node--service` (JSON)

**Tasks**:
- [ ] Update data source to JSON
- [ ] Maintain existing functionality
- [ ] Add rating display
- [ ] Test service grid
- [ ] Verify backward compatibility

---

#### 11. ❌ _includes/reusable/block--blog-preview.html
**Status**: Update existing
**Priority**: MEDIUM
**Purpose**: Update to read from node--article.json

**Current**: Reads from `site.posts` (Jekyll native)
**Target**: Read from `site.data.node--article` (JSON)

**Tasks**:
- [ ] Update data source to JSON
- [ ] Maintain existing layout
- [ ] Add category filtering
- [ ] Test blog preview
- [ ] Document changes

---

#### 12. ❌ _includes/schema/service-schema.html
**Status**: Create new
**Priority**: HIGH
**Purpose**: Generate JSON-LD schema for services

**Features**:
- [ ] Service schema.org markup
- [ ] AggregateRating schema
- [ ] Review schema
- [ ] Organization schema
- [ ] LocalBusiness schema

**Usage**:
```liquid
{% include schema/service-schema.html service_id=1 %}
```

**Tasks**:
- [ ] Create file
- [ ] Implement Service schema
- [ ] Add AggregateRating
- [ ] Add Review markup
- [ ] Test with Google Rich Results
- [ ] Validate with schema.org validator

---

## Implementation Plan

### Phase 1: Core Components (Week 1)
**Goal**: Create foundational includes

- [ ] Create `components/rating-stars.html`
- [ ] Create `components/review-list.html`
- [ ] Create `components/rating-distribution.html`
- [ ] Test all components independently
- [ ] Document component parameters
- [ ] Commit Phase 1

**Deliverable**: Reusable review/rating components

---

### Phase 2: Service Layout (Week 2)
**Goal**: Create JSON-powered service layout

- [ ] Create `layouts/json--service.html`
- [ ] Integrate rating components
- [ ] Integrate review components
- [ ] Add schema.org markup
- [ ] Test with one service
- [ ] Test with all services
- [ ] Commit Phase 2

**Deliverable**: Working JSON service layout

---

### Phase 3: Article Layout (Week 3)
**Goal**: Create JSON-powered article layout

- [ ] Create `layouts/json--article.html`
- [ ] Create `components/article-card.html`
- [ ] Update `block--blog-preview.html`
- [ ] Test with articles
- [ ] Commit Phase 3

**Deliverable**: Working JSON article layout

---

### Phase 4: Listings & Categories (Week 4)
**Goal**: Update listing pages

- [ ] Create `layouts/json--category.html`
- [ ] Update `block--services-grid.html`
- [ ] Update `components/service-card.html`
- [ ] Test category pages
- [ ] Test service listings
- [ ] Commit Phase 4

**Deliverable**: All listings using JSON

---

### Phase 5: Comments (Week 5 - Optional)
**Goal**: Add comment system

- [ ] Create `components/comment-thread.html`
- [ ] Add comment display to layouts
- [ ] Test comment threading
- [ ] Commit Phase 5

**Deliverable**: Comment system integrated

---

## Data Lookup Patterns

### Pattern 1: Lookup by Slug
```liquid
{% assign service = site.data.node--service.services | where: "slug", page.slug | first %}
```

### Pattern 2: Lookup by Node ID
```liquid
{% assign service = site.data.node--service.services | where: "node_id", page.node_id | first %}
```

### Pattern 3: Lookup by Service ID
```liquid
{% assign reviews = site.data.review.reviews | where: "service_id", service_id %}
```

### Pattern 4: Join Node and Service
```liquid
{% assign service = site.data.node--service.services | where: "slug", page.slug | first %}
{% assign node = site.data.node.nodes | where: "id", service.node_id | first %}
```

### Pattern 5: Get Rating
```liquid
{% assign rating = site.data.rating.ratings | where: "service_id", service_id | first %}
```

---

## Template Helpers

### Helper 1: Safe Lookup
```liquid
{% comment %}
Helper: Get service by slug with fallback
{% endcomment %}

{% assign service = site.data.node--service.services | where: "slug", include.slug | first %}

{% if service == nil %}
  <p class="alert alert-warning">Service not found: {{ include.slug }}</p>
{% else %}
  <!-- Render service -->
{% endif %}
```

### Helper 2: Rating Display
```liquid
{% comment %}
Helper: Display rating or "No reviews yet"
{% endcomment %}

{% assign rating = site.data.rating.ratings | where: "service_id", service_id | first %}

{% if rating and rating.total_reviews > 0 %}
  {{ rating.average }} ({{ rating.total_reviews }} reviews)
{% else %}
  No reviews yet
{% endif %}
```

### Helper 3: Category Name
```liquid
{% comment %}
Helper: Get category name by ID
{% endcomment %}

{% assign category = site.data.category.categories | where: "id", category_id | first %}
{% if category %}
  {{ category.name }}
{% endif %}
```

---

## Testing Checklist

### Per Component
- [ ] Renders with valid data
- [ ] Handles missing data gracefully
- [ ] Handles empty arrays
- [ ] CSS styles applied correctly
- [ ] Responsive on mobile
- [ ] No console errors
- [ ] Parameters documented

### Per Layout
- [ ] Renders complete page
- [ ] All sections display
- [ ] All components work
- [ ] Links are correct
- [ ] Images load
- [ ] Schema.org markup valid
- [ ] Page speed acceptable

### Integration Tests
- [ ] Service pages work
- [ ] Article pages work
- [ ] Category pages work
- [ ] Reviews display correctly
- [ ] Ratings display correctly
- [ ] Related content works
- [ ] Breadcrumbs work
- [ ] SEO metadata correct

---

## Performance Considerations

### Liquid Performance
- **Issue**: Multiple `where` filters slow
- **Solution**: Cache lookups in variables
- **Example**:
```liquid
{% assign all_services = site.data.node--service.services %}
{% assign service = all_services | where: "slug", page.slug | first %}
```

### Build Time
- **Issue**: Large JSON files slow build
- **Monitor**: Jekyll build time
- **Target**: < 10 seconds for full build
- **Solution**: Split JSON if needed

### Page Size
- **Issue**: Including all reviews increases page size
- **Solution**: Limit reviews per page
- **Example**: Show 5 reviews, link to "See all"

---

## Schema.org Structured Data

### Service Schema
```liquid
{
  "@context": "https://schema.org",
  "@type": "Service",
  "name": "{{ service.title }}",
  "description": "{{ service.description }}",
  "provider": {
    "@type": "Organization",
    "name": "{{ site.business.name }}"
  },
  "areaServed": "{{ service.area_served }}",
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "{{ rating.average }}",
    "reviewCount": "{{ rating.total_reviews }}"
  }
}
```

### Review Schema
```liquid
{
  "@context": "https://schema.org",
  "@type": "Review",
  "itemReviewed": {
    "@type": "Service",
    "name": "{{ service.title }}"
  },
  "author": {
    "@type": "Person",
    "name": "{{ review.author_name }}"
  },
  "reviewRating": {
    "@type": "Rating",
    "ratingValue": "{{ review.rating }}"
  },
  "reviewBody": "{{ review.content }}"
}
```

---

## Migration Strategy

### Step 1: Create Components
Build reusable components first (rating-stars, review-list)

### Step 2: Create One Layout
Build `json--service.html` with one test service

### Step 3: Test Thoroughly
Ensure everything works before bulk migration

### Step 4: Migrate Incrementally
Move services one by one or in small batches

### Step 5: Update Links
Update all internal links to use new layouts

### Step 6: Remove Old Files
Archive old `.md` files after migration complete

---

## Backward Compatibility

### Support Both Systems
During migration, support both YAML and JSON:

```liquid
{% if page.layout == "node--service" %}
  <!-- Old YAML system -->
  {{ page.title }}
{% elsif page.layout == "json--service" %}
  <!-- New JSON system -->
  {% assign service = site.data.node--service.services | where: "slug", page.slug | first %}
  {{ service.title }}
{% endif %}
```

### Gradual Migration
- Keep old layouts working
- Migrate services gradually
- No big bang deployment
- Easy to rollback if issues

---

## Documentation Requirements

### Component Documentation
Each component needs:
- Purpose description
- Parameter list with types
- Usage examples
- Default values
- Edge case handling

### Layout Documentation
Each layout needs:
- Data sources used
- Required frontmatter
- Optional frontmatter
- Example page setup
- Troubleshooting guide

---

## Progress Tracking

### Week 1: Components
**Target Date**: 2025-12-02

- [ ] rating-stars.html
- [ ] review-list.html
- [ ] rating-distribution.html

**Status**: Not Started
**Completion**: 0/3

---

### Week 2: Service Layout
**Target Date**: 2025-12-09

- [ ] json--service.html
- [ ] schema/service-schema.html
- [ ] Test one service

**Status**: Not Started
**Completion**: 0/3

---

### Week 3: Article Layout
**Target Date**: 2025-12-16

- [ ] json--article.html
- [ ] article-card.html
- [ ] Update blog-preview.html

**Status**: Not Started
**Completion**: 0/3

---

### Week 4: Listings
**Target Date**: 2025-12-23

- [ ] json--category.html
- [ ] Update services-grid.html
- [ ] Update service-card.html

**Status**: Not Started
**Completion**: 0/3

---

### Week 5: Comments
**Target Date**: 2025-12-30

- [ ] comment-thread.html
- [ ] Integrate to layouts

**Status**: Not Started
**Completion**: 0/2

---

## Related TODOs

- **TODO-1203**: JSON Node Architecture (prerequisite)
- **TODO-1202**: Data-driven blocks (complementary)
- **TODO-1205**: Content migration to JSON (follows this)

---

## Notes

- **Test each component independently** before integration
- **Document parameters clearly** for each include
- **Keep it simple** - don't over-engineer
- **Performance matters** - monitor build times
- **SEO is critical** - test schema.org markup
- **Backward compatibility** during migration phase

---

## References

- **Liquid Documentation**: https://shopify.github.io/liquid/
- **Jekyll Includes**: https://jekyllrb.com/docs/includes/
- **Schema.org**: https://schema.org/
- **Google Rich Results**: https://search.google.com/test/rich-results

---

**Last Updated**: 2025-11-25
**Next Review**: After TODO-1203 Phase 1
**Owner**: Development Team
