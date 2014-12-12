/*
  jQuery Document ready
*/
$(function()
{
	$('#admindate').datetimepicker(
        {
	addSliderAccess: true,
//	sliderAccessArgs: { touchonly: true }, //true adds the + and - buttons.
	sliderAccessArgs: false,
	dateFormat: "yy-mm-dd ",
	timeFormat: "HH:mm:ss ",
});

	/*
		below code just enable time picker.
	*/
//	$('#basic_example_2').timepicker();
});


nbs = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

function getEntry()
{
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
   // document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
   var arrayOjbect = xmlhttp.responseText; //Make a variable(object) from the responseText. The response should be properly
		//formatted JSON otherwise you will have make it properly formatted by adding quotes or braces etc.
		var JournalEntry = JSON.parse(arrayOjbect); // Parse the object and assign it to a variable named "biometric" (JSON.parse is in the json2.js library).
		qq = (String.fromCharCode(34)); //This isn't needed. I just keep it in case I want to insert quotes.

    var i=0;
    var j=(JournalEntry.length);

    xyz = ["Showing last 10 Entries <br /><br />"];
		for(i=i;i<j;i++)
			{
			xyz.push("ID: "+JournalEntry[i].id+nbs+"<br />");
			xyz.push("UTC Time: "+JournalEntry[i].utc_dttm+nbs); //Start pushing data into the array object.
    	xyz.push("Local Time: "+JournalEntry[i].cur_dttm+"<br />");
    	xyz.push(nbs+"Journal Entry: "+JournalEntry[i].entry+"<br /><br />");
			}

			RLH=xyz.join("");
    document.getElementById("myDiv").innerHTML=RLH; //Find the HTML element named "myDiv" and insert "RLH" into it.
    //document.write(j);
    //alert(j);
    }
  }

//xmlhttp.open("POST","../../blog/personal/journaldisplay.php?t=" + Math.random(),true);
//xmlhttp.open("POST","../../blog/x/journaldisplay.php?t=" + Math.random(),true); //Temporary
//xmlhttp.open("POST","../php/play/journaldisplay.php?t=" + Math.random(),true); //Old one.
xmlhttp.open("POST","journaldisplay.php?t=" + Math.random(),true); //Relative to the .php that is calling it not the .js
xmlhttp.send();
xmlhttp.close();

}

function putEntry()
{
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
		xmlhttp.onreadystatechange=function()
  {
  	if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
  }

var x=document.forms["dataform"]["entryform"].value;
if (x==null || x=="")
  {
  alert("Entry field must not be empty!");
  return false;
  }

	var td = document.dataform.entryform.value

//	xmlhttp.open("POST","../php/journalsubmit.php",true);
	xmlhttp.open("POST","../journalsubmit.php",true);
	xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlhttp.send("entryform="+x+""); //Send the input from the HTML to the php file listed in the xmlhttp.open function.
	xmlhttp.close();

}
