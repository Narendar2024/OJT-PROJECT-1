let slideIndex = 1;
let autoSlideInterval;
const slides = document.getElementsByClassName("carousel-slide");
const dots = document.getElementsByClassName("dot");
const overlayImages = document.querySelectorAll(".overlay img");

function showSlides(n) {
  if (n > slides.length) {
    slideIndex = 1;
  } else if (n < 1) {
    slideIndex = slides.length;
  }

  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
    overlayImages[i].style.animation = "none"; // Reset animation
  }

  for (let i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }

  slides[slideIndex - 1].style.display = "block";
  dots[slideIndex - 1].className += " active";

  // Trigger vertigo zoom effect on the current slide overlay
  overlayImages[slideIndex - 1].style.animation =
    "vertigoZoomIn 3s ease-in-out forwards, vertigoZoomOut 3s ease-in-out 3s forwards";
}

// Move to the next slide
function moveSlide(n) {
  clearInterval(autoSlideInterval); // Stop auto-slide on manual navigation
  showSlides((slideIndex += n));
  autoSlideInterval = setInterval(() => moveSlide(1), 5000); // Restart auto-slide after navigation
}

// Set the current slide
function currentSlide(n) {
  clearInterval(autoSlideInterval);
  showSlides((slideIndex = n));
  autoSlideInterval = setInterval(() => moveSlide(1), 5000);
}

// Start the auto-slide
function startAutoSlide() {
  autoSlideInterval = setInterval(() => moveSlide(1), 5000);
}

// Pause auto-slide on hover
function pauseAutoSlide() {
  clearInterval(autoSlideInterval);
}

// Restart auto-slide on mouse out
function resumeAutoSlide() {
  autoSlideInterval = setInterval(() => moveSlide(1), 5000);
}

// Initialize the carousel
showSlides(slideIndex);
startAutoSlide();

// Add event listeners for hover
const carouselElement = document.querySelector(".carousel-container");
carouselElement.addEventListener("mouseenter", pauseAutoSlide);
carouselElement.addEventListener("mouseleave", resumeAutoSlide);
