document.addEventListener('turbolinks:load', () => {  
  const clickButton = document.getElementById("nav-btn");
  let target = document.getElementById("nav-links")
  clickButton.addEventListener("click", function () {
    // if (target.style.) {
      
    // }
    // alert(document.documentElement.clientWidth)
    // $(target).toggleClass("flex")
    if (target.style.display === "none" && document.documentElement.clientWidth < 1024) {
      
    }
    $(target).animate({
      height:"toggle"
    })
    // if (screen.width < 1024) {
    // }
  }); 

  window.addEventListener("resize", function () {
    if (document.documentElement.clientWidth >= 1024) {
      target.style.display = "flex"
    } else {
      target.style.display = "none"
    }
  })
});

// document.addEventListener('turbolinks:load', () => {  
//   const clickButton = document.getElementById("nav-btn");  
//   // let target = clickButton.querySelector('[data-target="#nav-links"]')
//   // alert('ds')
//   let target = document.getElementById("nav-links")
//   clickButton.addEventListener("click", function () {
//     if (target.style.display === "flex") {
//       target.style.display = "none"
//     } else {
//       target.style.display = "flex"
//     }
//   }); 
// });

// document.addEventListener('turbolinks:load', () => {
//   $(document).ready(function () {
//     $(".nav-btn").each(function (_, navToggler) {
//       var target = $(navToggler).data("nav-links")
//       $(navToggler).on("click", function() {
//         $(target).animate({
//           height:"toggle"
//         })
//       })
//     })
//   })
// });