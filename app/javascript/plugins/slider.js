const manageSlider = () => {
  const slider = document.querySelector(".slider");
  const output = document.getElementById("demo");
  if (slider) {
    output.innerHTML = slider.value; // Display the default slider value
    slider.oninput = function() {
      output.innerHTML = this.value;
    };
  };
};

export { manageSlider }
