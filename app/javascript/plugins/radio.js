const manageRadio = () => {
  const choices = document.querySelectorAll('.category-chosen-wrapper');
  const spinner = document.querySelector(".sk-circle");
  if ( spinner ) {
    choices.forEach( (choice) => {
      choice.addEventListener('click', (event) => {
        console.log("hello");
        choices.forEach((c) => {c.classList.remove("active")});
        console.log(event.currentTarget);
        event.currentTarget.classList.add("active")
      });
    });
  };
}

export { manageRadio }
