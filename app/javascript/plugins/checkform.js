const manageCheckbox = () => {
  const choices = document.querySelectorAll('.category-chosen');
  choices.forEach( (choice) => {
    choice.addEventListener('click', (event) => {
        event.currentTarget.classList.toggle("active");
      });
    });
  };

export { manageCheckbox }
