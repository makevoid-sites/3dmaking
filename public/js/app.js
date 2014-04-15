(function() {
  var bind_fancybox, bind_lightbox, bind_showembed, is_undefined, lightbox, load_headroom, load_slidejs;

  lightbox = function() {
    var time, _i, _len, _ref;
    $(".lightbox").remove();
    $("html").prepend("<div class='lightbox'></div><div class='clear'></div>");
    _ref = [0, 200, 500, 1000, 2000, 6000];
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      time = _ref[_i];
      setTimeout(function() {
        return lightbox.resize();
      }, time);
    }
    return $(window).on("resize", function() {
      return lightbox.resize();
    });
  };

  lightbox.show = function(url) {
    $(".lightbox").on("click", function() {
      return lightbox.close();
    });
    $(".lightbox").append("<img src='" + url + "' />");
    return $(".lightbox img").imagesLoaded(function() {
      var body_width, img, marginLeft, width;
      $(".lightbox").css({
        display: "block"
      });
      width = lightbox.image_width();
      img = $(".lightbox img");
      img.css({
        width: width
      }).css({
        top: $(document).scrollTop()
      });
      body_width = $("body").width();
      marginLeft = ($("body").width() / 2 - img.width() / 2) / 0.8;
      return img.css({
        marginLeft: -marginLeft
      });
    });
  };

  lightbox.resize = function() {
    var height, wheight;
    height = $("html").height();
    wheight = $(window).height();
    height = Math.max(height, wheight);
    return $(".lightbox").height(height);
  };

  lightbox.close = function() {
    return $(".lightbox").hide();
  };

  lightbox.image_width = function() {
    var height, page_height, ratio, width;
    page_height = $(window).height() - parseInt($(".lightbox img").css("marginTop")) * 2;
    width = $(".lightbox img").width();
    height = $(".lightbox img").height();
    ratio = width / height;
    height = Math.min(page_height, height);
    return height * ratio;
  };

  load_slidejs = function() {
    if (!$("#slides").slidesjs) {
      return;
    }
    return $("#slides").slidesjs({
      width: 940,
      height: 528,
      play: {
        auto: true,
        active: true,
        interval: 4500
      },
      effect: {
        slide: {
          speed: 1000
        }
      }
    });
  };

  is_undefined = function(fn) {
    return typeof fn === "undefined";
  };

  load_headroom = function() {
    var elem, headroom, options;
    if (is_undefined(Headroom)) {
      return;
    }
    elem = document.querySelector("header");
    options = {
      offset: 90
    };
    $("header").css("width", "100%");
    headroom = new Headroom(elem, options);
    return headroom.init();
  };

  bind_lightbox = function() {
    return $(".album .album img").on("click", function() {
      var url;
      url = $(this).data("big");
      lightbox();
      return lightbox.show(url);
    });
  };

  bind_showembed = function() {
    return $("a.show_embed").on("click", function() {
      $("embed, object").show();
      return $(this).hide();
    });
  };

  bind_fancybox = function() {
    return $(".alb").fancybox();
  };

  $(function() {
    load_slidejs();
    load_headroom();
    bind_showembed();
    return bind_fancybox();
  });

}).call(this);
