document.addEventListener('turbolinks:load', () => {  
  // const clickButton = document.getElementById("nav-btn");
  // let target = document.getElementById("nav-links")
  // clickButton.addEventListener("click", function () {
  //   $(target).animate({
  //     height:"toggle"
  //   })
  // }); 

  const clickOpen = document.getElementById("nav-btn");
  let target = document.getElementById("nav-links")
  clickOpen.addEventListener("click", function () {
    target.style.width = "250px"
  }); 

  // (function() {
  //   $(".like").on("ajax:success", function(e, data, status, xhr) {
  //     // e.preventDefault();
  //     return false      
  //   });
  // });

  let likeButton = document.getElementById("like")
  likeButton.addEventListener("click", function () {
    $("#like").load(" #like > *");
  })
});
