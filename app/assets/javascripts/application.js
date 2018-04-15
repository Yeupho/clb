// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require  bootstrap-sprockets
//= require Chart.bundle
//= require chartkick
//= require moment
//= require fullcalendar

$('#calendar').fullCalendar({});


jQuery(function($) {
    $(document).on('click', ".clickable-row", function() {
        window.location = $(this).data("link");
    });
    $(document).on('click', ".clickable-row a", function() {
        $(this).stopPropagation();
    });
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })

    $(document).ready(function(){
        $(".dropdown-trigger").dropdown({ hover: false });
    });
});

