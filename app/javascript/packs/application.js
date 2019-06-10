import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { manageCheckbox } from "../plugins/checkform";


initMapbox();
manageCheckbox();


const slider = document.querySelector(".slider");
const output = document.getElementById("demo");
if (slider) {
  output.innerHTML = slider.value; // Display the default slider value
  slider.oninput = function() {
    output.innerHTML = this.value;
  }
}

// "voir plus"



  const button = document.getElementById("myBtn")
  button.addEventListener('click', (event) => {
    console.log('kikoo');
    const dots = document.getElementById("dots");

    const moreText = document.getElementById("more");
    const btnText = document.getElementById("myBtn");

    if (dots.style.display === "none") {
      dots.style.display = "inline";
      btnText.innerHTML = "Read more";
      moreText.style.display = "none";
    } else {
      dots.style.display = "none";
      btnText.innerHTML = "Read less";
      moreText.style.display = "inline";
    }
  });


