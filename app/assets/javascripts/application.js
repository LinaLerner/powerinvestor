//= require rails-ujs
//= require_tree .


const slider = document.querySelector(".slider");
const output = document.getElementById("demo");
output.innerHTML = slider.value; // Display the default slider value

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
  output.innerHTML = this.value;
}
