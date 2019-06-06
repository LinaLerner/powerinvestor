import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();

const slider = document.querySelector(".slider");
const output = document.getElementById("demo");
if (slider) {
  output.innerHTML = slider.value; // Display the default slider value
  slider.oninput = function() {
    output.innerHTML = this.value;
  }
}


document.querySelector('.franceconnect-button').addEventListener('click', function() {
  // Make the france connect modal disappear when you click on the france connect button
  document.querySelector('.franceconnect-modal').classList.remove('d-flex');
  document.querySelector('.franceconnect-modal').classList.add('d-none');
  // Simulate the Stripe button to open the stripe modal
  document.querySelector('.stripe-payment').click();
})




