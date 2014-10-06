$(document).ready(function() {
    
    // Init charts (only for dashboard)
    if (typeof($.fn.Charts) !== 'undefined') {
        oCharts = $.fn.Charts();
        oCharts.initCharts();
        $(document).ajaxStop(function() {
            oCharts.initCharts();
        });
    }
    
    // Show the delete btn for several checked checkbox
    $('body').on('.ui-select.posts', 'click', function() {
       alert($('.ui-select.posts:checked').size());
       if ($('.ui-select.posts:checked').size() > 1) {
           $('.ui-delete-posts').removeClass('hide');
       } else {
           $('.ui-delete-posts').addClass('hide');
       }
    });
    
    $('a[data-selector=#dashboard]:first').trigger('click');
    
    $('body').on('.blogpost', 'hover', function() {
        $(this).find('.blogpost-preview').css('bacground-position', '40% 60%');
    });
});