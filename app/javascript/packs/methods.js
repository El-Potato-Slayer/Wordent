document.addEventListener('turbolinks:load', () => {  
  const clickButton = document.getElementById("nav-btn");
  let target = document.getElementById("nav-links")
  clickButton.addEventListener("click", function () {
    $(target).animate({
      height:"toggle"
    })
  }); 

  // $(function() {
  $('#pictureInput').on('change', function(event) {
    var files = event.target.files;
    var image = files[0]
    var reader = new FileReader();
    reader.onload = function(file) {
      var img = new Image();
      console.log(file);
      img.src = file.target.result;
      $('#target').addClass('mt-8').html(img);
    }
    reader.readAsDataURL(image);
    console.log(files);
  });
  // });
  
  // let likeButton = document.getElementById("like")
  $('#like').on("click", function () {
    $("#like").load(" #like > *");
  })

  // function auto_grow(element) {
  //   element.style.height = "5px";
  //   element.style.height = (element.scrollHeight)+"px";
  // }

  // txt = document.getElementById("txt")
  
  // auto_grow(txt)
  $('textarea').on('keydown', function(e){
    if(e == 13) {e.preventDefault();}
  }).on('input', function(){
      $(this).height(1);
      var totalHeight = $(this).prop('scrollHeight') - parseInt($(this).css('padding-top')) - parseInt($(this).css('padding-bottom'));
      $(this).height(totalHeight);
  });
//   var span = $('<span>').css('display','inline-block')
//                       .css('word-break','break-all')
//                       .appendTo('body').css('visibility','hidden');
// function initSpan(textarea){
//   span.text(textarea.text())
//       .width(textarea.width())
//       .css('font',textarea.css('font'));
// }
// $('textarea').on({
//     input: function(){
//        var text = $(this).val();      
//        span.text(text);      
//        $(this).height(text ? span.height() : '1.1em');
//     },
//     focus: function(){           
//        initSpan($(this));
//     },
//     keypress: function(e){
//        //cancel the Enter keystroke, otherwise a new line will be created
//        //This ensures the correct behavior when user types Enter 
//        //into an input field
//        if(e.which == 13) e.preventDefault();
//     }
// });
});
