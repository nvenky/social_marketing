$(document).ready ->
  $('a.page-scroll').bind 'click', (event) ->
            $anchor = $(this)
            $('html, body').stop().animate({scrollTop: $($anchor.attr('href')).offset().top}, 1500, 'easeInOutExpo')
            event.preventDefault()
         $('.homepage .navbar-collapse ul li a').click ->
            $('.homepage .navbar-toggle:visible').click()
