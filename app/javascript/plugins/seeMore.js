 const seeMore = () => {
  const button = document.getElementById("myBtn");
  if ( button ) {
    button.addEventListener('click', (event) => {
      const dots = document.getElementById("dots");
      const moreText = document.getElementById("more");
      const btnText = document.getElementById("myBtn");

      if (dots.style.display === "none") {
        dots.style.display = "inline";
        btnText.innerHTML = "Read more";
        moreText.style.display = "none";
      } else {
        dots.style.display = "none";
        btnText.innerHTML = "Read less";
        moreText.style.display = "inline";
      }
    });
  }
}

export { seeMore }
