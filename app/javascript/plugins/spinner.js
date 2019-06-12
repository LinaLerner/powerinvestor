const manageSpinner = () => {
  const button = document.querySelector("input.submit")
  const form = document.querySelector(".simple_form.edit_user");
  const spinner = document.querySelector(".sk-circle");
  const progressBar = document.getElementById("progress-step-4");
  const message = document.querySelector(".loader-message")
  if ( spinner ) {
    button.addEventListener('click', (event) => {
      event.preventDefault()
      spinner.classList.remove("d-none");
      message.classList.remove("d-none");
      button.classList.add("d-none");
      progressBar.classList.add("full");
      setTimeout(() => {
        form.submit();
      }, 2000)
    });
  }
}

export { manageSpinner }

