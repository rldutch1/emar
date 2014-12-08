/*
  jQuery Document ready
*/
$(function()
{
	$('#basic_example_1').datetimepicker(
        {
	addSliderAccess: false,
	sliderAccessArgs: { touchonly: false },
	dateFormat: "yy-mm-dd ",
	timeFormat: "HH:mm:ss ",
});

	/*
		below code just enable time picker.
	*/
//	$('#basic_example_2').timepicker();
});