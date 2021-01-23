document.addEventListener('turbolinks:load', () => {  
  const clickButton = document.getElementById("nav-btn");
  let target = document.getElementById("nav-links")
  clickButton.addEventListener("click", function () {
    $(target).animate({
      height:"toggle"
    })
  }); 

  window.addEventListener("resize", function () {
    if (document.documentElement.clientWidth >= 1024) {
      target.style.display = "flex"
    } else {
      target.style.display = "none"
    }
  })
});

// jQuery(document).ready(function(){

//   var navHeight = $("#nav").height(); // Get nav height
//   // var footerHeight = $("#footer").height(); // get footer height
//   var windowHeight = $(window).height(); // get window height
//   var content = $("#featured-article"); 
  
//       content.height(windowHeight - navHeight); // do math
//       console.log(navHeight); // for testing
//       console.log(windowHeight); // for testing
//       console.log(content.height()); // for testing
  
//   // Dont forget to call it on resize also
//   $(window).resize(function() {
//       content.height(windowHeight - navHeight);
//   });
  
//   });

// $(document).ready(function(){
//   let nav = document.getElementById("nav");
//   document.getElementById('featured-article').style.height = 1000 - nav.style.height 
//   });

  
// $(window).load(function() {
//   let nav = document.getElementById("nav");
//   document.getElementById('featured-article').style.height = 1000 - nav.style.height
// });
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

function getContentHeight(){
  let featuredArticle = document.getElementById('featured-article')
  let nav = document.getElementById("nav");
  featuredArticle.style.height = document.documentElement.clientHeight - nav.style.height 
}