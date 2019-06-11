const manageSlider = () => {
  const slider = document.querySelector(".slider");
  const output = document.getElementById("demo");
  console.log(slider);
  if (slider) {
    output.innerHTML = slider.value; // Display the default slider value
    slider.oninput = function() {
      output.innerHTML = this.value;
    };
  };
};

export { manageSlider }
