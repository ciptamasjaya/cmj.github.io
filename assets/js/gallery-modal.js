/**
 * Gallery Modal (Lightbox)
 *
 * @file        gallery-modal.js
 * @path        assets/js/gallery-modal.js
 * @description Lightbox functionality for block--gallery.html
 * @author      arisciwek
 * @created     2025-11-29
 */

(function() {
  'use strict';

  function initGalleryModal() {
    const galleryItems = document.querySelectorAll('.gallery-item');
    const modalImage = document.getElementById('galleryModalImage');

    if (!modalImage || galleryItems.length === 0) return;

    galleryItems.forEach(function(item) {
      item.addEventListener('click', function(e) {
        e.preventDefault();
        const imgSrc = this.getAttribute('data-img');
        modalImage.setAttribute('src', imgSrc);
      });
    });
  }

  // Run on DOM ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initGalleryModal);
  } else {
    initGalleryModal();
  }
})();
