// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require rails.validations
//= require_tree .
//= require jquery-ui


$(function() {

	$('#datepicker').datepicker({
		dateFormat: 'dd-mm-yy',
		changeMoth:true,
		changeYear:true,
		yearRange: "-5:+20",
	});

	$("#dialog").dialog();
	
	$("#p1").mouseenter(function(){
		alert("You entered password field!");
	 });
	 
	$("input").focus(function(){
		$(this).css("background-color", "LightGray");
	});
	
	$("input").blur(function(){
		$(this).css("background-color","#ffffff");
	});
	
	$("#div1").css("border", "2px. solid green");
	
	$(document).ready(function() {
	$('#faqs h3').each(function() {
		var tis = $(this), state = false, answer = tis.next('div').hide().css('height','auto').slideUp();
		tis.click(function() {
			state = !state;
			answer.slideToggle(state);
			tis.toggleClass('active',state);
		});
	});
});
	
	});
