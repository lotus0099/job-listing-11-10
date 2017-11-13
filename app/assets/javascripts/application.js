// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require bootstrap/collapse
//= require_tree .
// $(window).scroll(function () {
//
//   if ($(this).scrollTop() > 0) {//当我们下拉超过200的时候
//     if ($('.nav-s').is(':animated')) {
//       return false
//     }
//     $('.nav-s').addClass('row2_fixed') // 让导航栏固定在顶部
//     $('.nav-s').stop().animate({top: 0}, 600) // 在600ms内匀速慢慢出来
//   } else {
//     $('.nav-s').css({top: -80})
//     $('.nav-s').removeClass('row2_fixed')
//   }
// })
