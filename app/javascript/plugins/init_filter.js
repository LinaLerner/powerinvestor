
const initFilter = () => {
  const array = Array.from(document.querySelectorAll('.project-category'));
  array.forEach((checkbox) => {
    checkbox.addEventListener('click', ()=>{
    document.querySelector('.button-categories').click();
    });
  });
};

export { initFilter };
