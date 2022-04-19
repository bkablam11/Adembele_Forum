// Gestion de image slider
// let slider_image = document.querySelector(".figure").children;
// console.log(slider_image);
// let etape = 0;
// let nbre_images = slider_image.length;

// let precedent = document.querySelector(".precedent");
// let suivant = document.querySelector(".suivant");

// function enleverActiveImages() {
//   for (let i = 0; i < nbre_images; i++) {
//     slider_image[1].classList.remove("active");
//   }
// }

// suivant.addEventListener("click", function () {
//   etape++;
//   enleverActiveImages();
//   slider_image[etape].classList.add("active");
// });

let slider = document.querySelector(".slider-contenu").children;

let index = 0;
let precedent = document.querySelector(".precedent");
let suivant = document.querySelector(".suivant");
let total_slides = slider.length;

suivant.onclick = function () {
  next("next");
};
precedent.onclick = function () {
  next("prev");
};
function next(direction) {
  if (direction == "next") {
    index++;
    if (index == total_slides) {
      index = 0;
    }
  } else {
    if (index == 0) {
      index = total_slides - 1;
    } else {
      index--;
    }
  }

  for (i = 0; i < slider.length; i++) {
    slider[i].classList.remove("active");
  }
  slider[index].classList.add("active");
}

// Gestion des effets de transition du image slider
setInterval(function () {
  index++;
  if (index >= total_slides) {
    index = 0;
  }

  for (i = 0; i < slider.length; i++) {
    slider[i].classList.remove("active");
  }
  slider[index].classList.add("active");
}, 5000);
// Gestion des effets de transition du image slider
