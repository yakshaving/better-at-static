$('#slideshow').each ->

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

  # Controls
  prev.click ->
    # coming soon