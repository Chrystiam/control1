// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require twitter/bootstrap
//= require jquery_ujs
//= require lazybox
//= require jquery-ui
//= require autocomplete-rails
//= require_tree .

$(document).ready(function() {
  
	  $('a[rel*=lazybox]').lazybox({close: false, modal: false, opacity: 0.7, klass: 'lazybox', speed: 200});
	  $.lazybox.settings = {cancelClass: "btn-lime", submitClass: 'btn red', closeImg: false}
	  $.rails.allowAction = $.lazybox.confirm;

	  $('#client_city_name').bind('railsAutocomplete.select', function(event, data){
	  $("#city_id").attr("value",data.item.id);});

});

$(function() {
    $('.carousel').carousel({
	  interval: 2000
	})
});