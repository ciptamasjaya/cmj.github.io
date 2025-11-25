# TODO-1021: Bootstrap 5 Components Library

**Created**: 2025-11-22
**Priority**: Medium
**Context**: Membuat wrapper components untuk Bootstrap 5 di `_includes/components/`
**Goal**: Complete Bootstrap 5 component library dengan BEM naming dan no inline styles

---

## Status Summary

- **Total Components**: 32
- **Completed**: 12 ✅
- **Pending**: 20 ⬜
- **Progress**: 37.5%

---

## ✅ Completed Components (12)

1. ✅ accordion.html - Collapsible accordion panels
2. ✅ card.html - Flexible content container
3. ✅ card--h2-basic.html - Section header with gradient (6 presets)
4. ✅ card--h2-gradient.html - Enhanced section header (8 themes)
5. ✅ carousel.html - Image slideshow/carousel
6. ✅ cta-whatsapp.html - WhatsApp CTA (4 variants: floating, button, card, inline)
7. ✅ heading--h3-circle.html - H3 heading with circle icon (7 color themes)
8. ✅ heading--h4-icon.html - Simple inline icon heading
9. ✅ item-list--strong-title.html - List item with icon + title + description
10. ✅ ordered-list.html - Styled ordered list with icons
11. ✅ unordered-list.html - Styled unordered list (check/icon/bullet)
12. ✅ unordered-list--with-text.html - Simple icon + text list

---

## ⬜ Pending Components (20)

### High Priority (Core UI Components)

1. ⬜ **alert.html** - Bootstrap 5 alerts with variants
   - Variants: primary, secondary, success, danger, warning, info, light, dark
   - Dismissible option
   - Icon support
   - Alert heading support

2. ⬜ **badge.html** - Labels and count indicators
   - Variants: primary, secondary, success, danger, warning, info, light, dark
   - Pill style option
   - Icon support
   - Size variants

3. ⬜ **button.html** - Styled buttons with variants
   - Variants: primary, secondary, success, danger, warning, info, light, dark, link
   - Outline variants
   - Sizes: sm, md, lg
   - Block buttons
   - Disabled state
   - Icon support

4. ⬜ **modal.html** - Dialog/popup windows
   - Sizes: sm, md, lg, xl, fullscreen
   - Centered option
   - Scrollable content
   - Static backdrop option
   - Header, body, footer sections

5. ⬜ **spinner.html** - Loading spinners
   - Border spinner
   - Growing spinner
   - Sizes: sm, md, lg
   - Color variants
   - Accessibility label

### Medium Priority (Navigation & Structure)

6. ⬜ **breadcrumb.html** - Navigation breadcrumb trail
   - Array of items with links
   - Active item styling
   - Schema.org structured data
   - Custom separator option

7. ⬜ **nav-tabs.html** - Navigation tabs
   - Tabs variant
   - Pills variant
   - Vertical orientation
   - Fill/justified options
   - Active state

8. ⬜ **navbar.html** - Responsive navigation header
   - Light/dark themes
   - Expand breakpoints
   - Brand logo support
   - Search form option
   - Dropdown menu support

9. ⬜ **pagination.html** - Pagination links
   - Sizes: sm, md, lg
   - Disabled/active states
   - Icon support (prev/next)
   - Alignment options

10. ⬜ **dropdown.html** - Toggleable dropdown menus
    - Split button option
    - Directions: down, up, start, end
    - Menu alignment
    - Dividers and headers
    - Active/disabled items

11. ⬜ **list-group.html** - Flexible list of content
    - Basic list
    - Linked items
    - Button items
    - Flush variant
    - Numbered variant
    - Badge support
    - Active/disabled states

### Medium Priority (Layout & Feedback)

12. ⬜ **collapse.html** - Toggle content visibility
    - Accordion integration
    - Multiple targets
    - Custom trigger
    - Horizontal collapse

13. ⬜ **progress.html** - Progress bars
    - Variants: primary, success, info, warning, danger
    - Striped option
    - Animated option
    - Label support
    - Multiple bars
    - Height customization

14. ⬜ **table.html** - Responsive tables with variants
    - Striped rows
    - Bordered option
    - Borderless option
    - Hover rows
    - Color variants
    - Small/compact option
    - Responsive wrapper
    - Caption support

15. ⬜ **button-group.html** - Group buttons together
    - Horizontal group
    - Vertical group
    - Sizes: sm, md, lg
    - Toolbar support
    - Button checkboxes/radios

### Low Priority (Advanced Components)

16. ⬜ **offcanvas.html** - Hidden sidebar panel (NEW in BS5)
    - Placement: start, end, top, bottom
    - Backdrop option
    - Scroll behavior
    - Header, body sections

17. ⬜ **toast.html** - Push notifications
    - Auto-hide option
    - Stacking
    - Placement (top-right, bottom-left, etc)
    - Icon and image support
    - Action buttons

18. ⬜ **placeholder.html** - Loading skeleton (NEW in BS5)
    - Sizes: xs, sm, md, lg
    - Widths: 25%, 50%, 75%, 100%
    - Color variants
    - Animation: glow, wave
    - Custom shapes

19. ⬜ **tooltip.html** - Hover tooltips
    - Placement: top, right, bottom, left, auto
    - HTML content support
    - Trigger: hover, focus, click
    - Custom delay
    - Offset customization

20. ⬜ **popover.html** - Contextual overlay
    - Placement: top, right, bottom, left, auto
    - Title and content
    - HTML content support
    - Trigger: hover, focus, click
    - Dismissible option

---

## Implementation Guidelines

### 1. BEM Naming Convention
```scss
.component-[name] { }
.component-[name]__element { }
.component-[name]--modifier { }
```

### 2. Icon Size Presets (No Free-form Values)
```yaml
icon_size: sm | md | lg | xl | 2xl
# sm  = 1rem (16px)
# md  = 1.5rem (24px)
# lg  = 2rem (32px)
# xl  = 2.5rem (40px)
# 2xl = 3rem (48px)
```

### 3. No Inline Styles
- All structural styles → `assets/css/_components.scss`
- Dynamic values (gradients, colors) → dapat inline
- Use CSS classes, not `style="..."`

### 4. Explicit Frontmatter (No Loops)
```yaml
# Bad (loops)
items: [item1, item2, item3]

# Good (explicit)
item_1: "First item"
item_2: "Second item"
item_3: "Third item"
```

### 5. CSS Classes Match Frontmatter Variables
```liquid
<!-- Frontmatter -->
heading_title: "Main Title"

<!-- HTML with matching class -->
<h2 class="heading-title">{{ page.heading_title }}</h2>
```

### 6. Comprehensive Documentation
Every component must include:
- File header comment with description
- Version and date
- Author
- Features list
- Parameters with types and defaults
- Usage examples (basic + advanced)
- Use cases

---

## File Structure Template

```liquid
{% comment %}
============================================================================
[Component Name]
============================================================================

@file        _includes/components/[component-name].html
@description [Component description]
@version     1.0.0
@date        YYYY-MM-DD
@author      arisciwek

Features:
---------
- Feature 1
- Feature 2
- Feature 3

Parameters:
-----------
- param1: Description (required/optional, default: value)
- param2: Description (type: string|boolean|array)

Usage:
------
Basic usage:
{% include components/[component-name].html
   param1="value1"
   param2="value2"
%}

Advanced usage:
[More examples...]

============================================================================
{% endcomment %}

<!-- Component implementation -->
```

---

## Testing Checklist

For each component, test:
- ✅ Renders correctly in all Bootstrap variants
- ✅ Responsive on mobile, tablet, desktop
- ✅ All parameters work as documented
- ✅ No inline styles (except allowed dynamic values)
- ✅ BEM classes applied correctly
- ✅ Icon size presets work
- ✅ Accessible (ARIA labels, semantic HTML)
- ✅ Works with/without optional parameters

---

## Progress Tracking

Update this section as components are completed:

### Week 1 (2025-11-22 - 2025-11-28)
- [ ] Create 5 high-priority components (alert, badge, button, modal, spinner)

### Week 2 (2025-11-29 - 2025-12-05)
- [ ] Create 5 navigation components (breadcrumb, nav-tabs, navbar, pagination, dropdown)

### Week 3 (2025-12-06 - 2025-12-12)
- [ ] Create 5 layout components (list-group, collapse, progress, table, button-group)

### Week 4 (2025-12-13 - 2025-12-19)
- [ ] Create 5 advanced components (offcanvas, toast, placeholder, tooltip, popover)

---

## Notes

- Components harus follow "Ready To Follow" pattern (instructions in frontmatter, not content)
- Semua components harus registered di COMPONENTS.md setelah dibuat
- Update CHANGELOG.md setelah selesai batch components
- Commit per component atau per batch (max 5 components)
- Priority bisa berubah based on project needs

---

## References

- Bootstrap 5 Documentation: https://getbootstrap.com/docs/5.3/
- BEM Methodology: https://getbem.com/
- Project SCSS Guide: `/home/mkt01/Public/cmj.github/public_html/SCSS-GUIDE.md`
- Existing Components: `/home/mkt01/Public/cmj.github/public_html/_includes/components/`

---

**Last Updated**: 2025-11-22 17:45
