//= require jquery
//= require stylr/prettify/prettify.js

// TODO: Refactor me!!!!

var Stylr = {
  dropdownButtonSelector: '.stylr-button-dropdown'
};

(function($) {

  $(function() {

    // Code pretty printing
    // ====================

    prettyPrint();

    // Dropdown Navigation
    // ===================

    $('body').live('click', function (e) {
      $('.dropdown > a').next('ul').removeClass('open');
    });

    $('.dropdown > a').live('click', function (e) {
      var height = $(this).outerHeight(true);
      $(this).next('ul').toggleClass('open').css('top', height);
      return false;
    });

    // Dropdown Buttons
    // ================

    $('body').live('click', function (e) {
      $(Stylr.dropdownButtonSelector).find('> ul').removeClass('open');
    });

    $(Stylr.dropdownButtonSelector).live('click', function (e) {
      var height = $(this).outerHeight(true);
      $(Stylr.dropdownButtonSelector).find('> ul').removeClass('open');
      $(this).find('> ul').toggleClass('open').css('top', height);
      return false;
    });


    // Alerts
    // ======

    $('.alert > a.close').live('click', function() {
      $(this).parent().remove();
      return false;
    });
  });
})(jQuery);
