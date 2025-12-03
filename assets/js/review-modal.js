/**
 * Review Modal JavaScript
 * =======================
 * @file        review-modal.js
 * @path        assets/js/review-modal.js
 * @description Handle star rating interaction and form submission
 * @version     1.2.0
 * @date        2025-12-03
 * @author      arisciwek
 *
 * Features:
 * - Interactive star rating with hover effects
 * - Rating text feedback
 * - Form validation
 * - Input sanitization (XSS protection)
 * - Honeypot anti-spam
 * - Rate limiting
 * - Time-based check (anti-bot)
 * - Submit via WhatsApp (formatted message)
 * - Future-ready for API integration
 *
 * Security Levels:
 * - Level 1: Basic validation (required fields)
 * - Level 2: Input sanitization (escape HTML, trim, length limit)
 * - Level 3: Honeypot (detect bots)
 * - Level 4: Rate limiting (prevent spam clicks)
 * - Level 5: Time-based check (form filled too fast = bot)
 */

(function() {
  'use strict';

  // ==========================================================================
  // Configuration
  // ==========================================================================

  const CONFIG = {
    // Rate limiting
    RATE_LIMIT_KEY: 'review_last_submit',
    RATE_LIMIT_MINUTES: 5,

    // Time-based check (minimum seconds to fill form)
    MIN_FILL_TIME_SECONDS: 3,

    // Input limits
    MAX_LENGTH: {
      nama: 100,
      usaha: 150,
      judul: 200,
      komentar: 1000
    },

    // Messages
    MESSAGES: {
      rateLimit: 'Mohon tunggu {minutes} menit lagi sebelum mengirim review.',
      honeypot: 'Terjadi kesalahan. Silakan refresh halaman.',
      tooFast: 'Mohon isi form dengan lebih teliti.',
      submitSuccess: 'Review akan dikirim via WhatsApp.',
      submitError: 'Gagal mengirim review. Silakan coba lagi.'
    }
  };

  // Rating text labels
  const ratingLabels = {
    1: 'Sangat Buruk',
    2: 'Buruk',
    3: 'Cukup',
    4: 'Baik',
    5: 'Sangat Baik'
  };

  // Star emoji for WhatsApp message
  const starEmoji = '⭐';

  // DOM Elements
  let starRating, ratingText, submitBtn, reviewForm;
  let currentRating = 0;
  let modalOpenTime = 0; // Time when modal was opened (for time-based check)

  // ==========================================================================
  // Security Functions
  // ==========================================================================

  /**
   * Sanitize input string (Level 2 Security)
   * - Escape HTML entities to prevent XSS
   * - Trim whitespace
   * - Limit length
   * @param {string} str - Input string
   * @param {number} maxLength - Maximum allowed length
   * @returns {string} Sanitized string
   */
  function sanitizeInput(str, maxLength = 500) {
    if (typeof str !== 'string') return '';

    // Trim whitespace
    let sanitized = str.trim();

    // Escape HTML entities
    const htmlEntities = {
      '&': '&amp;',
      '<': '&lt;',
      '>': '&gt;',
      '"': '&quot;',
      "'": '&#x27;',
      '/': '&#x2F;',
      '`': '&#x60;',
      '=': '&#x3D;'
    };

    sanitized = sanitized.replace(/[&<>"'`=\/]/g, char => htmlEntities[char]);

    // Remove multiple consecutive spaces/newlines
    sanitized = sanitized.replace(/\s+/g, ' ');

    // Limit length
    if (sanitized.length > maxLength) {
      sanitized = sanitized.substring(0, maxLength);
    }

    return sanitized;
  }

  /**
   * Check honeypot field (Level 3 Security)
   * If honeypot is filled, it's likely a bot
   * @returns {boolean} True if spam detected
   */
  function isHoneypotFilled() {
    const honeypot = document.getElementById('reviewWebsite');
    if (honeypot && honeypot.value.trim() !== '') {
      console.warn('Honeypot triggered - possible bot detected');
      return true;
    }
    return false;
  }

  /**
   * Check rate limit (Level 4 Security)
   * Prevent spam by limiting submissions
   * @returns {object} { allowed: boolean, remainingMinutes: number }
   */
  function checkRateLimit() {
    const lastSubmit = localStorage.getItem(CONFIG.RATE_LIMIT_KEY);

    if (!lastSubmit) {
      return { allowed: true, remainingMinutes: 0 };
    }

    const lastTime = parseInt(lastSubmit, 10);
    const now = Date.now();
    const diffMinutes = (now - lastTime) / (1000 * 60);

    if (diffMinutes < CONFIG.RATE_LIMIT_MINUTES) {
      const remaining = Math.ceil(CONFIG.RATE_LIMIT_MINUTES - diffMinutes);
      return { allowed: false, remainingMinutes: remaining };
    }

    return { allowed: true, remainingMinutes: 0 };
  }

  /**
   * Set rate limit timestamp
   */
  function setRateLimit() {
    localStorage.setItem(CONFIG.RATE_LIMIT_KEY, Date.now().toString());
  }

  /**
   * Check time-based (Level 5 Security)
   * If form filled too fast, it's likely a bot
   * @returns {boolean} True if too fast (bot detected)
   */
  function isFilledTooFast() {
    if (modalOpenTime === 0) {
      return false; // Modal open time not set, skip check
    }

    const now = Date.now();
    const diffSeconds = (now - modalOpenTime) / 1000;

    if (diffSeconds < CONFIG.MIN_FILL_TIME_SECONDS) {
      console.warn('Time-based check triggered - form filled too fast:', diffSeconds, 'seconds');
      return true;
    }

    return false;
  }

  /**
   * Show security error message
   * @param {string} message - Error message
   */
  function showSecurityError(message) {
    // Create or get alert element
    let alertEl = document.getElementById('reviewSecurityAlert');

    if (!alertEl) {
      alertEl = document.createElement('div');
      alertEl.id = 'reviewSecurityAlert';
      alertEl.className = 'alert alert-warning alert-dismissible fade show mt-3';
      alertEl.setAttribute('role', 'alert');

      const modalBody = document.querySelector('#reviewModal .modal-body');
      if (modalBody) {
        modalBody.insertBefore(alertEl, modalBody.firstChild);
      }
    }

    alertEl.innerHTML = `
      <i class="bi bi-exclamation-triangle-fill me-2"></i>
      ${message}
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    `;

    alertEl.style.display = 'block';

    // Auto-hide after 5 seconds
    setTimeout(() => {
      if (alertEl) {
        alertEl.style.display = 'none';
      }
    }, 5000);
  }

  // ==========================================================================
  // Core Functions
  // ==========================================================================

  /**
   * Initialize the review modal
   */
  function init() {
    // Get DOM elements
    starRating = document.getElementById('starRating');
    ratingText = document.getElementById('ratingText');
    submitBtn = document.getElementById('submitReview');
    reviewForm = document.getElementById('reviewForm');

    if (!starRating || !submitBtn || !reviewForm) {
      return; // Exit if elements not found
    }

    // Setup event listeners
    setupStarRating();
    setupFormValidation();
    setupSubmitHandler();
    setupModalTimeTracker();

    // Check rate limit on init
    const rateCheck = checkRateLimit();
    if (!rateCheck.allowed) {
      submitBtn.disabled = true;
      showSecurityError(
        CONFIG.MESSAGES.rateLimit.replace('{minutes}', rateCheck.remainingMinutes)
      );
    }
  }

  /**
   * Setup modal time tracker (for time-based check)
   */
  function setupModalTimeTracker() {
    const modal = document.getElementById('reviewModal');
    if (modal) {
      // Record time when modal is shown
      modal.addEventListener('shown.bs.modal', function() {
        modalOpenTime = Date.now();
      });

      // Reset time when modal is hidden
      modal.addEventListener('hidden.bs.modal', function() {
        modalOpenTime = 0;
      });
    }
  }

  /**
   * Setup star rating interaction
   */
  function setupStarRating() {
    const stars = starRating.querySelectorAll('input[type="radio"]');
    const labels = starRating.querySelectorAll('label');

    // Handle star click
    stars.forEach(star => {
      star.addEventListener('change', function() {
        currentRating = parseInt(this.value);
        updateRatingText(currentRating);
        validateForm();
      });
    });

    // Handle hover effects
    labels.forEach(label => {
      label.addEventListener('mouseenter', function() {
        const rating = parseInt(this.getAttribute('for').replace('star', ''));
        updateRatingText(rating);
        ratingText.classList.add('has-rating');
      });

      label.addEventListener('mouseleave', function() {
        if (currentRating > 0) {
          updateRatingText(currentRating);
        } else {
          ratingText.textContent = 'Pilih rating';
          ratingText.classList.remove('has-rating');
        }
      });
    });
  }

  /**
   * Update rating text display
   */
  function updateRatingText(rating) {
    if (rating > 0 && ratingLabels[rating]) {
      ratingText.textContent = starEmoji.repeat(rating) + ' ' + ratingLabels[rating];
      ratingText.classList.add('has-rating');
    }
  }

  /**
   * Setup form validation
   */
  function setupFormValidation() {
    const inputs = reviewForm.querySelectorAll('input[required], textarea[required]');

    inputs.forEach(input => {
      input.addEventListener('input', validateForm);
      input.addEventListener('change', validateForm);
    });
  }

  /**
   * Validate form and enable/disable submit button
   */
  function validateForm() {
    const nama = document.getElementById('reviewNama').value.trim();
    const judul = document.getElementById('reviewJudul').value.trim();
    const komentar = document.getElementById('reviewKomentar').value.trim();

    // Check rate limit
    const rateCheck = checkRateLimit();
    if (!rateCheck.allowed) {
      submitBtn.disabled = true;
      return false;
    }

    const isValid = currentRating > 0 && nama.length > 0 && judul.length > 0 && komentar.length > 0;

    submitBtn.disabled = !isValid;
    return isValid;
  }

  /**
   * Setup submit handler
   */
  function setupSubmitHandler() {
    submitBtn.addEventListener('click', handleSubmit);
  }

  /**
   * Handle form submission
   */
  function handleSubmit(e) {
    e.preventDefault();

    // Security Check 1: Honeypot
    if (isHoneypotFilled()) {
      showSecurityError(CONFIG.MESSAGES.honeypot);
      return;
    }

    // Security Check 2: Time-based (form filled too fast)
    if (isFilledTooFast()) {
      showSecurityError(CONFIG.MESSAGES.tooFast);
      return;
    }

    // Security Check 3: Rate Limit
    const rateCheck = checkRateLimit();
    if (!rateCheck.allowed) {
      showSecurityError(
        CONFIG.MESSAGES.rateLimit.replace('{minutes}', rateCheck.remainingMinutes)
      );
      return;
    }

    // Security Check 4: Form Validation
    if (!validateForm()) {
      return;
    }

    // Collect and sanitize form data
    const reviewData = {
      rating: currentRating,
      nama: sanitizeInput(
        document.getElementById('reviewNama').value,
        CONFIG.MAX_LENGTH.nama
      ),
      usaha: sanitizeInput(
        document.getElementById('reviewUsaha').value,
        CONFIG.MAX_LENGTH.usaha
      ),
      judul: sanitizeInput(
        document.getElementById('reviewJudul').value,
        CONFIG.MAX_LENGTH.judul
      ),
      komentar: sanitizeInput(
        document.getElementById('reviewKomentar').value,
        CONFIG.MAX_LENGTH.komentar
      ),
      pageTitle: document.getElementById('reviewPageTitle').textContent.trim(),
      pageUrl: document.getElementById('reviewPageUrl').value,
      waPhone: document.getElementById('reviewWaPhone').value,
      timestamp: new Date().toISOString()
    };

    // Set rate limit
    setRateLimit();

    // Submit via WhatsApp (or API when ready)
    submitViaWhatsApp(reviewData);

    // Close modal
    const modal = bootstrap.Modal.getInstance(document.getElementById('reviewModal'));
    if (modal) {
      modal.hide();
    }

    // Reset form
    resetForm();
  }

  /**
   * Submit review via WhatsApp
   * @param {Object} data - Review data
   */
  function submitViaWhatsApp(data) {
    // Format message
    const message = formatWhatsAppMessage(data);

    // Create WhatsApp URL
    const waUrl = `https://wa.me/${data.waPhone}?text=${encodeURIComponent(message)}`;

    // Open WhatsApp
    window.open(waUrl, '_blank');
  }

  /**
   * Format review data for WhatsApp message
   * @param {Object} data - Review data
   * @returns {string} Formatted message
   */
  function formatWhatsAppMessage(data) {
    const stars = starEmoji.repeat(data.rating);
    const ratingLabel = ratingLabels[data.rating];

    let message = `*REVIEW BARU*\n`;
    message += `${'─'.repeat(20)}\n\n`;

    message += `*Halaman:*\n${data.pageTitle}\n`;
    message += `${data.pageUrl}\n\n`;

    message += `*Rating:* ${stars} (${data.rating}/5 - ${ratingLabel})\n\n`;

    message += `*Nama:* ${data.nama}\n`;
    if (data.usaha) {
      message += `*Pekerjaan:* ${data.usaha}\n`;
    }
    message += `\n`;

    message += `*Judul Review:*\n${data.judul}\n\n`;

    message += `*Komentar:*\n${data.komentar}\n\n`;

    message += `${'─'.repeat(20)}\n`;
    message += `_Dikirim: ${formatDate(data.timestamp)}_`;

    return message;
  }

  /**
   * Format date for display
   * @param {string} isoString - ISO date string
   * @returns {string} Formatted date
   */
  function formatDate(isoString) {
    const date = new Date(isoString);
    const options = {
      day: 'numeric',
      month: 'long',
      year: 'numeric',
      hour: '2-digit',
      minute: '2-digit'
    };
    return date.toLocaleDateString('id-ID', options);
  }

  /**
   * Reset form to initial state
   */
  function resetForm() {
    reviewForm.reset();
    currentRating = 0;

    // Reset star rating
    const stars = starRating.querySelectorAll('input[type="radio"]');
    stars.forEach(star => {
      star.checked = false;
    });

    // Reset rating text
    ratingText.textContent = 'Pilih rating';
    ratingText.classList.remove('has-rating');

    // Disable submit button
    submitBtn.disabled = true;
  }

  /**
   * Submit via API (for future use)
   * @param {Object} data - Review data
   * @returns {Promise}
   */
  function submitViaAPI(data) {
    return fetch('/api/reviews', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(data)
    })
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .catch(error => {
      console.error('API submission error:', error);
      showSecurityError(CONFIG.MESSAGES.submitError);
      throw error;
    });
  }

  // ==========================================================================
  // Initialize
  // ==========================================================================

  // Initialize when DOM is ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }

})();
