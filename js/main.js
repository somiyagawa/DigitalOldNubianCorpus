jQuery(document).ready(function( $ ) {

  $('a[data-gal]').each(function() {
    $(this).attr('rel', $(this).data('gal'));
  });
  $("a[data-rel^='prettyPhoto']").prettyPhoto({animationSpeed:'slow',theme:'light_square',slideshow:false,overlay_gallery: false,social_tools:false,deeplinking:false});

  // Isotope Options
  var $container = $('.portfolio'),
    $items = $container.find('.portfolio-item'),
    portfolioLayout = 'fitRows';

  if ($container.hasClass('portfolio-centered')) {
    portfolioLayout = 'masonry';
  }

  $container.isotope({
    filter: '*',
    animationEngine: 'best-available',
    layoutMode: portfolioLayout,
    animationOptions: {
      duration: 750,
      easing: 'linear',
      queue: false
    },
    masonry: {}
  }, refreshWaypoints());

  function refreshWaypoints() {
    setTimeout(function() {}, 1000);
  }

  $('nav.portfolio-filter ul a').on('click', function() {
    var selector = $(this).attr('data-filter');
    $container.isotope({
      filter: selector
    }, refreshWaypoints());
    $('nav.portfolio-filter ul a').removeClass('active');
    $(this).addClass('active');
    return false;
  });

  function getColumnNumber() {
    var winWidth = $(window).width(),
      columnNumber = 1;

    if (winWidth > 1200) {
      columnNumber = 5;
    } else if (winWidth > 950) {
      columnNumber = 4;
    } else if (winWidth > 600) {
      columnNumber = 3;
    } else if (winWidth > 400) {
      columnNumber = 2;
    } else if (winWidth > 250) {
      columnNumber = 1;
    }
    return columnNumber;
  }

  function setColumns() {
    var winWidth = $(window).width(),
      columnNumber = getColumnNumber(),
      itemWidth = Math.floor(winWidth / columnNumber);

    $container.find('.portfolio-item').each(function() {
      $(this).css({
        width: itemWidth + 'px'
      });
    });
  }

  function setPortfolio() {
    setColumns();
    $container.isotope('reLayout');
  }

  $container.imagesLoaded(function() {
    setPortfolio();
  });

  $(window).on('resize', function() {
    setPortfolio();
  });
});
