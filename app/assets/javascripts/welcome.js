$(document).ready(function(){

  // Dropdown example for topbar nav
  // ===============================

  $("body").bind("click", function (e) {
    $('a.menu').parent("li").removeClass("open");
  });

  $("a.menu").click(function (e) {
    var $li = $(this).parent("li").toggleClass('open');
    return false;
  });

  // add on logic
  // ============

  $('.add-on :checkbox').click(function() {
    if ($(this).attr('checked')) {
      $(this).parents('.add-on').addClass('active');
    } else {
      $(this).parents('.add-on').removeClass('active');
    }
  });

  // Disable certain links in docs
  // =============================

  $('ul.tabs a, ul.pills a, .pagination a, .well .btn, .actions .btn, .alert-message .btn, a.close').click(function(e) {
    e.preventDefault();
  });

});
