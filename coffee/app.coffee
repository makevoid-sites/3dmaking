
# lightbox

lightbox = ->
  $(".lightbox").remove()
  $("html").prepend("<div class='lightbox'></div><div class='clear'></div>")

  for time in [0, 200, 500, 1000, 2000, 6000]
    setTimeout ->
      lightbox.resize()
    , time

  $(window).on "resize", ->
    lightbox.resize()

lightbox.show = (url) ->
  $(".lightbox").on "click", ->
    lightbox.close()

  $(".lightbox").append("<img src='#{url}' />")

  $(".lightbox img").imagesLoaded ->
    $(".lightbox").css({ display: "block" })
    width = lightbox.image_width()
    img = $(".lightbox img")
    img.css({ width: width }).css({ top: $(document).scrollTop() })
    body_width = $("body").width()
    marginLeft = ( $("body").width() / 2 - img.width() / 2 ) / 0.8#/ 2
    img.css( marginLeft: -marginLeft )

lightbox.resize = ->
  height = $("html").height()
  wheight = $(window).height()
  height = Math.max height, wheight
  $(".lightbox").height height

lightbox.close = ->
  $(".lightbox").hide()

lightbox.image_width = ->
  page_height = $(window).height() - parseInt($(".lightbox img").css("marginTop"))*2
  width = $(".lightbox img").width()
  height = $(".lightbox img").height()
  ratio = width / height
  height = Math.min page_height, height
  height * ratio

# slidejs3 gallery

load_slidejs = ->
  $("#slides").slidesjs
    width: 940,
    height: 528,
    play:
      auto: true,
      active: true,
      interval: 4500,
    effect:
      slide:
        speed: 1000

# headroom

load_headroom = ->
  elem = document.querySelector "header"
  options = {
    offset: 90
  }
  headroom = new Headroom(elem, options)
  headroom.init()
  $("header").css("width", "100%")
  #$("header").headroom()

# app code

bind_lightbox = ->
  $(".album .album img").on "click", ->
    url = $(this).data "big"
    lightbox()
    lightbox.show(url)
    
#resize_boxes = ->
#  box_right = $(".box.right")
#  box_left = $(".box.left").last()
#  box_left_height = $(".superbox")
#  boxes = [box_left, box_right]
#  max_box_height = _( [box_left_height.height(), box_right.height()] ).max()
#  console.log max_box_height
#  $(box_left).height(max_box_height+ 200)
#  $(box_right).height(max_box_height+ 200)
#    
#    
#bind_resize_boxes = ->
#  resize_boxes()
#  $(window).on "resize", resize_boxes
  

# main

$ ->
  load_slidejs()
  load_headroom()
  bind_lightbox()
  
  #bind_resize_boxes()
