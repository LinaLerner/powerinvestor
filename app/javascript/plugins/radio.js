const manageRadio = () => {
  const choices = document.querySelectorAll('.category-chosen-step4');

  choices.forEach( (choice) => {
    choice.addEventListener('click', (event) => {
      console.log("hello");
      choices.forEach((c) => {c.classList.remove("active")});
      console.log(event.currentTarget);
      event.currentTarget.classList.add("active")
      // if (checkActive === null) {
      //   event.currentTarget.classList.add("active")
      // } else {
      //   checkActive.classList.remove("active")
      //   event.currentTarget.classList.add("active")
      // }
    });
  });
};

export { manageRadio }
