function myFunction(target) { 
  // let x = document.getElementById("nav-links")
  // if (x.style.display === "flex") {
  //   x.style.display = "none"
  // } else {
  //   x.style.display = "flex"
  // }
  alert('sd')
}

document.addEventListener('turbolinks:load', () => {  
  const clickButton = document.getElementById("nav-btn");  
  let target = clickButton.querySelector('data-target="#nav-links"')
  clickButton.addEventListener("click", () => {
    alert('dfd')
  }); 
});
