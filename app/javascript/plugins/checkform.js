const manageCheckbox = () => {
  const choices = document.querySelectorAll('.category-chosen-wrapper');
  const spinner = document.querySelector(".sk-circle");
  if ( !spinner ) {
  choices.forEach( (choice) => {
    choice.addEventListener('click', (event) => {
        event.currentTarget.classList.toggle("active");
      });
    });
  };
}

export { manageCheckbox }
