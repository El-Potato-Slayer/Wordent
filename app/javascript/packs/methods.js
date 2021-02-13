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

  $('#like').on("click", function () {
    $("#like").load(" #like > *");
  })

  $('#error_explanation').load("error_explanation", function () {
    $("#error_explanation").load(" #error_explanation > *");
  })

  $('textarea').load( "textarea", function () {
    $(this).height(1);
    setTextAreaHeight($(this))
  })

  $('textarea').on('keydown', function(e){
    if(e == 13) {e.preventDefault();}
  }).on('input', function(){
      setTextAreaHeight($(this))
  });

  function setTextAreaHeight(textArea) {
    var totalHeight = $(textArea).prop('scrollHeight') - parseInt($(textArea).css('padding-top')) - parseInt($(textArea).css('padding-bottom'));
    $(textArea).height(totalHeight);
  }

  $(".notice").delay(3000).fadeOut(1000);
  $(".alert").delay(3000).fadeOut(1000);
});
