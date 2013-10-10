/* Declare a namespace for the site */
var Site = window.Site || {};

(function($) {

  //same as $(document).ready();
  $(function() {

    $(":input[placeholder]").placeholder();

    // replace inline svg files with png fallbacks, include parent container
    // as selector(s) inside the parenthesis
    svgReplace();

    // Chosen Forms
    $('.js-chosen').chosen({
      width: '100%',
      allow_single_deselect: true,
      no_results_text: "Nothing here for"
    });

  });


})(jQuery);