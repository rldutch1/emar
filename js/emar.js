/*
  jQuery Document ready
*/

//Datepicker dropdown.
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
		enable code below just to enable the time picker.
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

//Send data to h_mar table.
function puth_mar()
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

var x1 = document.p_list.namequery.value;
var x2 = document.p_list.medquery.value;
var x3 = parseFloat(document.p_list.dose.value);
var x4 = document.p_list.unitquery.value;
var x5 = document.p_list.admindate.value;
var x6 = document.p_list.symptom.value;
var x7 = parseFloat(document.p_list.temperature.value);
//var x=document.forms["dataform"]["entryform"].value;
//if (x1==null || x1=="" || x2==null || x2=="" || x3==null || x3=="" || x4==null || x4=="" "" x5==null || x5=="" || x6==null || x6=="" || x7==null || x7=="" )
if (x1<1)// || x2==1) || x3==null || x3=="")
  {
  alert("Please choose a name!");
  return false;
  }
if (x2<1)
  {
  alert("Please choose a medication!");
  return false;
  }
if (x3==null || x3=="")
  {
  alert("Dose must not be empty!");
  return false;
  }
if (x4<1)
  {
  alert("Please choose a unit!");
  return false;
  }
if (x5==null || x5=="")
  {
  alert("Please choose a date and time!");
  return false;
  }
if (x6==null || x6=="")
  {
  alert("Please enter symptom(s)!");
  return false;
  }
if (x7==0){
	x7='00.0';
	}
else if (isNaN(x7)==true || x7 < 0 || x7 == "")
  {
  alert("Please enter valid temperature or enter zero if temperature is not taken! ");
  return false;
  }
//alert(x1+" "+x2+" "+x3+" "+x4+" "+x5+" "+x6+" "+x7);

//	xmlhttp.open("POST","../php/journalsubmit.php",true);
	xmlhttp.open("POST","../emar_post.php",true);
	xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
//	xmlhttp.send("entryform="+x1+x2+x3+x4+x5+x6+x7+""); //Send the input from the HTML to the php file listed in the xmlhttp.open function.
	xmlhttp.send("namequery="+x1+"&medquery="+x2+"&dose="+x3+"&unitquery="+x4+"&admindate="+x5+"&symptom="+x6+"&temperature="+x7+"");
//	alert("namequery="+x1+"&medquery="+x2+"&dose="+x3+"&unitquery="+x4+"&admindate="+x5+"&symptom="+x6+"&temperature="+x7+"");
	xmlhttp.close();
/*

*/
// xyzpdq1 = document.formname.elementname.value
// xyzpdq2 = document.formname.nextelementname.value
//xmlhttp.send("elementname="+xyzpdq1+"&nextelementname="+xyzpdq2+"");
//Example: http://www.robholland.com/disneymovies.html
}
