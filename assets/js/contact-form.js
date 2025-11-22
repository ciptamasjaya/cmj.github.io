/**
 * ============================================================================
 * Contact Form Handler
 * ============================================================================
 *
 * @file        contact-form.js
 * @path        assets/js/contact-form.js
 * @description Handles contact form validation and submission
 * @version     1.0.0
 * @author      arisciwek
 *
 * ============================================================================
 */

(function() {
  'use strict';

  // Contact form handler will be implemented here
  console.log('Contact form script loaded');

  // Form validation example
  document.addEventListener('DOMContentLoaded', function() {
    const forms = document.querySelectorAll('.needs-validation');

    Array.from(forms).forEach(function(form) {
      form.addEventListener('submit', function(event) {
        if (!form.checkValidity()) {
          event.preventDefault();
          event.stopPropagation();
        }

        form.classList.add('was-validated');
      }, false);
    });
  });

})();
