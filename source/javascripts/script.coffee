jQuery("#news").newsticker(200)

jQuery.fn.ba_slider = () ->
  # Containers and slides
  div = $(this)
  slidesDiv = div.find('#slides')
  slides = slidesDiv.find('.slide')

  # Container widths
  slidesDiv.css "width", (div.outerWidth() * slides.length)
  slides.css "width", div.outerWidth()

  # Wrap inner slide content
  slides.wrapInner '<div class="inner" />'

  # Control buttons
  controls = div.find('a.control')
  prev = div.find('a.previous-slide')
  next = div.find('a.next-slide')

  # Slider
  slideIndex = 1
  prev.hide()
  slide = (direction) ->
    if direction == "next" && slideIndex < slides.length
      slideIndex = (slideIndex + 1)
    else if direction == "prev" && slideIndex > 1
      slideIndex = (slideIndex - 1)

    #TODO: make this less stupid.
    prev.show()
    next.show()
    if slideIndex == 1
      prev.hide()
    if slideIndex == slides.length
      next.hide()

    # Use native CSS transitions if available, otherwise use jQuery animations
    if Modernizr.csstransitions
      slidesDiv.css "left", "-#{div.outerWidth() * (slideIndex - 1)}px"
    else
      slidesDiv.animate left: "-#{div.outerWidth() * (slideIndex - 1)}px"

  # Controls
  prev.click ->
    slide "prev"
    return false

  next.click ->
    slide "next"
    return false

$('#slideshow').ba_slider()

