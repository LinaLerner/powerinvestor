const manageSpinner = () => {
  const form = document.querySelector(".edit_user");
  if ( form ) {
    const spinner = document.querySelector(".sk-circle");
    form.addEventListener('submit', (event) => {
      event.preventDefault()
      spinner.classList.remove("d-none");
      setTimeout((e) => {
        form.submit();
      }, 2000)
    });

  }
}

export { manageSpinner }

