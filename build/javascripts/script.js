jQuery("#news").newsticker(200);
jQuery.fn.ba_slider = function() {
  var controls, div, next, prev, slide, slideIndex, slides, slidesDiv;
  div = $(this);
  slidesDiv = div.find('#slides');
  slides = slidesDiv.find('.slide');
  slidesDiv.css("width", div.outerWidth() * slides.length);
  slides.css("width", div.outerWidth());
  slides.wrapInner('<div class="inner" />');
  controls = div.find('a.control');
  prev = div.find('a.previous-slide');
  next = div.find('a.next-slide');
  slideIndex = 1;
  prev.hide();
  slide = function(direction) {
    if (direction === "next" && slideIndex < slides.length) {
      slideIndex = slideIndex + 1;
    } else if (direction === "prev" && slideIndex > 1) {
      slideIndex = slideIndex - 1;
    }
    prev.show();
    next.show();
    if (slideIndex === 1) {
      prev.hide();
    }
    if (slideIndex === slides.length) {
      next.hide();
    }
    if (Modernizr.csstransitions) {
      return slidesDiv.css("left", "-" + (div.outerWidth() * (slideIndex - 1)) + "px");
    } else {
      return slidesDiv.animate({
        left: "-" + (div.outerWidth() * (slideIndex - 1)) + "px"
      });
    }
  };
  prev.click(function() {
    slide("prev");
    return false;
  });
  return next.click(function() {
    slide("next");
    return false;
  });
};
$('#slideshow').ba_slider();