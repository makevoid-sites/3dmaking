
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
    console.log "asd"

lightbox.show = (url) ->
  $(".lightbox").on "click", ->
    lightbox.close()

  $(".lightbox").append("<img src='#{url}' />")

  $(".lightbox img").imagesLoaded ->
    $(".lightbox").css({ display: "block" })
    width = lightbox.image_width()
    img = $(".lightbox img")
    img.css({ width: width }).css({ top: $(document).scrollTop() })
    marginLeft = ( $("body").width() / 2 - img.width() / 2 ) / 2
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
  
# app code

bind_lightbox = ->
  $(".album .album img").on "click", ->
    url = $(this).data "big"
    lightbox()
    lightbox.show(url)
    
# main

$ ->
  bind_lightbox()