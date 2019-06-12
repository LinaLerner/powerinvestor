
const initFilter = () => {
  const array = Array.from(document.querySelectorAll('.project-category'));
  array.forEach((button) => {
    button.addEventListener('click', ()=>{
    document.querySelector('.button-categories').click();
    const toto = document.querySelector(`label[for='${event.target.id}']`).classList.toggle('button-tag-clicked');
    console.log(event.target.id)
    console.log(toto)

    });
  });
};

export { initFilter };
