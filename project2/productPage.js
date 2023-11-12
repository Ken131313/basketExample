const slideshow = document.querySelector('.slideshow');
let slidePosition = 0;
const slides = slideshow.getElementsByTagName('img');
const totalSlides = slides.length;

document.getElementById('slideshow-container').addEventListener('mouseenter', () => {
  clearInterval(slideshowInterval);
});

document.getElementById('slideshow-container').addEventListener('mouseleave', () => {
  slideshowInterval = setInterval(() => {
    moveToNextSlide();
  }, 2000);
});

slideshow.addEventListener('transitionend', updateSlidePosition);

let slideshowInterval = setInterval(() => {
  moveToNextSlide();
}, 2000);

function moveToNextSlide() {
  if (slidePosition === totalSlides - 4) {
    slidePosition = 0;
  } else {
    slidePosition++;
  }
  updateSlidePosition();
}

function updateSlidePosition() {
  slideshow.style.transform = `translateX(-${slidePosition * 25}%)`;
}