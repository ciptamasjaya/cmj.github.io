# ==============================================================================
# Jekyll Plugin: Service After Write - Auto Update Last Modified Dates
# ==============================================================================
#
# @file        plugin__service_after_write.rb
# @path        _plugins/plugin__service_after_write.rb
# @description Automatically updates last_modified_at in service-related pages
#              when a service is added or updated
# @author      ciptamasjaya
# @version     2.0.0
# @date        2025-11-24
# @updated     2025-11-24 - Add layanan index page update
#
# How it works:
# -------------
# 1. Runs on :site :post_read hook (after all content loaded)
# 2. Finds all services in _services collection
# 3. Groups services by category and subcategory
# 4. Finds the latest date from services in each group
# 5. Updates page last_modified_at for:
#    - Service index page (layanan.html)
#    - Category pages (e.g., riksa-uji-pesawat-angkat-angkut.md)
#    - Subcategory pages (e.g., riksa-uji-forklift.md)
# 6. This makes Google re-index pages when new content added
#
# Benefits:
# ---------
# - Auto-updates lastmod when service added/updated
# - No need to manually edit page dates
# - Better SEO - Google sees fresh content faster
# - Sitemap shows accurate lastmod dates
#
# Future:
# -------
# - Similar plugin can be created: plugin__post_after_write.rb
#
# ==============================================================================

Jekyll::Hooks.register :site, :post_read do |site|
  # Get services collection
  services = site.collections['services']
  next unless services

  # Hash to store latest dates
  category_dates = Hash.new { |h, k| h[k] = [] }
  subcategory_dates = Hash.new { |h, k| h[k] = [] }
  all_service_dates = []

  # Collect dates from all services
  services.docs.each do |service|
    category = service.data['category']
    subcategory = service.data['sub_category']

    # Get the latest date (last_modified_at or date)
    service_date = service.data['last_modified_at'] || service.data['date']
    next unless service_date

    # Store all service dates (for layanan index page)
    all_service_dates << service_date

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

  # Get latest date from all services (for layanan index page)
  latest_service_date = all_service_dates.max unless all_service_dates.empty?

  # Update service-related pages with latest dates
  site.pages.each do |page|
    # Update service index page (layanan.html)
    if page.name == 'layanan.html' && latest_service_date
      page.data['last_modified_at'] = latest_service_date
      Jekyll.logger.info "Service Index:", "layanan.html → #{latest_service_date}"
    end

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

  # Also check category/subcategory pages in services collection
  services.docs.each do |doc|
    # Check if this is a category page in services collection
    if doc.data['is_category_page'] && doc.data['category']
      category = doc.data['category']

      if category_dates[category] && !category_dates[category].empty?
        latest_date = category_dates[category].max

        # Update last_modified_at in doc data
        doc.data['last_modified_at'] = latest_date

        Jekyll.logger.info "Category Update:", "#{category} → #{latest_date}"
      end
    end

    # Check if this is a subcategory page in services collection
    if doc.data['is_subcategory_page'] && doc.data['category'] && doc.data['sub_category']
      category = doc.data['category']
      subcategory = doc.data['sub_category']
      key = "#{category}||#{subcategory}"

      if subcategory_dates[key] && !subcategory_dates[key].empty?
        latest_date = subcategory_dates[key].max

        # Update last_modified_at in doc data
        doc.data['last_modified_at'] = latest_date

        Jekyll.logger.info "Subcategory Update:", "#{subcategory} → #{latest_date}"
      end
    end
  end

  Jekyll.logger.info "Auto LastMod:", "Service pages updated from service content"
end
