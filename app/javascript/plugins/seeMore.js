 const seeMore = () => {
  const button = document.getElementById("myBtn");
  if ( button ) {
    button.addEventListener('click', (event) => {
      const dots = document.getElementById("dots");
      const moreText = document.getElementById("more");
      const btnText = document.getElementById("myBtn");
      const desc = document.getElementById("description");

      if (dots.style.display === "none") {
        dots.style.display = "inline";
        btnText.innerHTML = '<i class="fas fa-chevron-circle-down"></i>';
        moreText.style.display = "none";
        desc.style.height = "130px";
      } else {
        dots.style.display = "none";
        btnText.innerHTML = '<i class="fas fa-chevron-circle-up"></i>';
        moreText.style.display = "inline";
        desc.style.height = "auto";
      }
    });
  }
}

export { seeMore }
