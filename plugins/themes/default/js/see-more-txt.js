/*
$(document).ready(function() {
  var nInitialCount = 100; //Intial characters to display
  var moretext = "Ocultar descripción";
  var lesstext = "Ver descripción completa"; 
  $('.longtext').each(function() {
    var paraText = $(this).html();
    if (paraText.length > nInitialCount) {
      var sText = paraText.substr(100, nInitialCount);
      var eText = paraText.substr(nInitialCount, paraText.length - nInitialCount);
      var newHtml = sText + '...<span class="moretext"><span>' + eText + '</span><a href="" class="links">' + moretext + '</a></span>';
      $(this).html(newHtml);
    }
  });

  $(".links").on('click', function(e) {
  	var lnkHTML = $(this).html();
    if (lnkHTML == lesstext) {
      $(this).html(moretext);
    } else {
      $(this).html(lesstext);
    }
    $(this).prev().toggle();
    e.preventDefault();
  });
});
*/


    $('#info').readmore({
      moreLink: '<a href="#">Usage, examples, and options</a>',
      collapsedHeight: 384,
      afterToggle: function(trigger, element, expanded) {
        if(! expanded) { // The "Close" link was clicked
          $('html, body').animate({scrollTop: element.offset().top}, {duration: 100});
        }
      }
    });

    $('article').readmore({speed: 500});

