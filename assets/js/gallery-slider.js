/**
 * Gallery Slider
 *
 * @file        gallery-slider.js
 * @path        assets/js/gallery-slider.js
 * @description Simple gallery slider for block--gallery.html
 * @author      arisciwek
 * @created     2025-11-27
 */

(function() {
  'use strict';

  function initGallerySlider(gallery) {
    const track = gallery.querySelector('.gallery-track');
    const slides = gallery.querySelectorAll('.gallery-slide');
    const prevBtn = gallery.querySelector('.gallery-prev');
    const nextBtn = gallery.querySelector('.gallery-next');
    const dotsContainer = gallery.querySelector('.gallery-dots');

    if (!track || slides.length === 0) return;

    let currentIndex = 0;
    const totalSlides = slides.length;

    // Create dots
    if (dotsContainer) {
      slides.forEach((_, index) => {
        const dot = document.createElement('button');
        dot.classList.add('gallery-dot');
        dot.setAttribute('aria-label', 'Go to slide ' + (index + 1));
        if (index === 0) dot.classList.add('active');
        dot.addEventListener('click', () => goToSlide(index));
        dotsContainer.appendChild(dot);
      });
    }

    const dots = gallery.querySelectorAll('.gallery-dot');

    function updateSlider() {
      track.style.transform = 'translateX(-' + (currentIndex * 100) + '%)';

      // Update dots
      dots.forEach((dot, index) => {
        dot.classList.toggle('active', index === currentIndex);
      });

      // Update buttons state
      if (prevBtn) prevBtn.disabled = currentIndex === 0;
      if (nextBtn) nextBtn.disabled = currentIndex === totalSlides - 1;
    }

    function goToSlide(index) {
      currentIndex = index;
      updateSlider();
    }

    function nextSlide() {
      if (currentIndex < totalSlides - 1) {
        currentIndex++;
        updateSlider();
      }
    }

    function prevSlide() {
      if (currentIndex > 0) {
        currentIndex--;
        updateSlider();
      }
    }

    // Event listeners
    if (prevBtn) prevBtn.addEventListener('click', prevSlide);
    if (nextBtn) nextBtn.addEventListener('click', nextSlide);

    // Keyboard navigation
    gallery.addEventListener('keydown', function(e) {
      if (e.key === 'ArrowLeft') prevSlide();
      if (e.key === 'ArrowRight') nextSlide();
    });

    // Touch/swipe support
    let touchStartX = 0;
    let touchEndX = 0;

    track.addEventListener('touchstart', function(e) {
      touchStartX = e.changedTouches[0].screenX;
    }, { passive: true });

    track.addEventListener('touchend', function(e) {
      touchEndX = e.changedTouches[0].screenX;
      handleSwipe();
    }, { passive: true });

    function handleSwipe() {
      const swipeThreshold = 50;
      const diff = touchStartX - touchEndX;

      if (diff > swipeThreshold) {
        nextSlide(); // Swipe left
      } else if (diff < -swipeThreshold) {
        prevSlide(); // Swipe right
      }
    }

    // Initial state
    updateSlider();
  }

  // Initialize all galleries on page
  function initAllGalleries() {
    const galleries = document.querySelectorAll('.block--gallery');
    galleries.forEach(initGallerySlider);
  }

  // Run on DOM ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initAllGalleries);
  } else {
    initAllGalleries();
  }
})();
