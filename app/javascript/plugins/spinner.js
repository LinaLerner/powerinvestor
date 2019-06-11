const manageSpinner = () => {
  const button = document.querySelector("input.submit")
  const form = document.querySelector(".simple_form.edit_user");
  const spinner = document.querySelector(".sk-circle");
  if ( spinner ) {
    button.addEventListener('click', (event) => {
      event.preventDefault()
      spinner.classList.remove("d-none");
      button.classList.add("d-none");
      setTimeout(() => {
        form.submit();
      }, 2000)
    });
  }
}

export { manageSpinner }

