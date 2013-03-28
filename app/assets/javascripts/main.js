$(document).foundation('topbar', {
	index : 0,
	stickyClass : 'sticky',
	custom_back_text: true, // Set this to false and it will pull the top level link name as the back text
	back_text: 'Back', // Define what you want your custom back text to be if custom_back_text: true
	init : false
});

// $('#datepicker').pickadate()

$( '[type=date], #datepicker' ).pickadate()

$("#new_appointment").validate();

$("#new_user").validate();