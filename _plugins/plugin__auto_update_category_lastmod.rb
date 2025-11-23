# ==============================================================================
# Jekyll Plugin: Auto Update Category/Subcategory Last Modified Date
# ==============================================================================
#
# @file        plugin__auto_update_category_lastmod.rb
# @path        _plugins/plugin__auto_update_category_lastmod.rb
# @description Automatically updates last_modified_at in category/subcategory
#              pages when a service is added or updated
# @author      ciptamasjaya
# @version     1.0.0
# @date        2025-11-24
#
# How it works:
# -------------
# 1. Runs on :documents :post_init hook (after documents loaded)
# 2. Finds all services in _services collection
# 3. Groups services by category and subcategory
# 4. Finds the latest date from services in each group
# 5. Updates category/subcategory page data with latest date
# 6. This makes Google re-index category pages when new content added
#
# Benefits:
# ---------
# - Category lastmod auto-updates when service added/updated
# - No need to manually edit category page dates
# - Better SEO - Google sees fresh content faster
# - Sitemap shows accurate lastmod dates
#
# ==============================================================================

Jekyll::Hooks.register :site, :post_read do |site|
  # Get services collection
  services = site.collections['services']
  next unless services

  # Hash to store latest dates
  category_dates = Hash.new { |h, k| h[k] = [] }
  subcategory_dates = Hash.new { |h, k| h[k] = [] }

  # Collect dates from all services
  services.docs.each do |service|
    category = service.data['category']
    subcategory = service.data['sub_category']

    # Get the latest date (last_modified_at or date)
    service_date = service.data['last_modified_at'] || service.data['date']
    next unless service_date

    # Store dates by category
    if category
      category_dates[category] << service_date
    end

    # Store dates by subcategory (need both category and subcategory)
    if category && subcategory
      key = "#{category}||#{subcategory}"
      subcategory_dates[key] << service_date
    end
  end

  # Update category pages with latest dates
  site.pages.each do |page|
    # Check if this is a category page
    if page.data['is_category_page'] && page.data['category']
      category = page.data['category']

      if category_dates[category] && !category_dates[category].empty?
        latest_date = category_dates[category].max

        # Update last_modified_at in page data
        page.data['last_modified_at'] = latest_date

        Jekyll.logger.info "Category Update:", "#{category} → #{latest_date}"
      end
    end

    # Check if this is a subcategory page
    if page.data['is_subcategory_page'] && page.data['category'] && page.data['sub_category']
      category = page.data['category']
      subcategory = page.data['sub_category']
      key = "#{category}||#{subcategory}"

      if subcategory_dates[key] && !subcategory_dates[key].empty?
        latest_date = subcategory_dates[key].max

        # Update last_modified_at in page data
        page.data['last_modified_at'] = latest_date

        Jekyll.logger.info "Subcategory Update:", "#{subcategory} → #{latest_date}"
      end
    end
  end

  Jekyll.logger.info "Auto LastMod:", "Category dates updated from service content"
end
