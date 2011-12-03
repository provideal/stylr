//= require jquery
//= require stylr/prettify/prettify.js

// TODO: Refactor me!!!!

var Stylr = {
  dropdownButtonSelector: '.dropdown-button'
};

(function($) {

  $(function() {

    Stylr.closeDropdown = function(dropdown) {
      $(dropdown).removeClass('open');
      return dropdown;
    };

    Stylr.toggleDropdown = function(container, dropdown) {
      var height   = $(container).outerHeight(true);
      var dropdown = $(dropdown);

      $(Stylr.dropdownButtonSelector).find('> ul').each(function(i, e) {
        if (!$(e).is(dropdown)) {
          $(e).removeClass('open');
        }
      });
      
      if (!dropdown.is(':visible')) $('body').click();

      dropdown.toggleClass('open');
      dropdown.css('top', height);

      return dropdown;
    };

    // Code pretty printing
    // ====================

    prettyPrint();

    // Dropdown Navigation
    // ===================

    $('body').live('click', function (e) {
      Stylr.closeDropdown($('.dropdown > a').next('ul'));
      return true;
    });

    $('.dropdown > a').live('click', function (e) {
      Stylr.toggleDropdown($(this), $(this).next('ul'));
      return false;
    });

    // Dropdown Buttons
    // ================

    $('body').live('click', function(e) {
      Stylr.closeDropdown($(Stylr.dropdownButtonSelector).find('> ul'));
      return true;
    });

    $(Stylr.dropdownButtonSelector).live('click', function(e) {
      Stylr.toggleDropdown($(this), $(this).find('> ul'));
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
