
function ageCal(){

	var now = new Date();
	var currentY = now.getFullYear();
	var currentM = now.getMonth();
	var currentD = now.getDay();

	var getdob = document.myForm.dob.value;
	var dateob = new Date(getdob);
	var prevY = dateob.getFullYear();
	var prevM = dateob.getMonth();
	var prevD = dateob.getDay();
	var age = Math.abs(
		new Date(
			now - dateob
		).getUTCFullYear() - 1970
	);

	var ageY = currentY - prevY;
	var ageM = Math.abs(currentM - prevM);
	var ageD = Math.abs(currentD - prevD);

	if(document.myForm.fname.value==""){
		document.getElementById('spn1').innerHTML= "Please enter your First Name";
		document.myForm.fname.focus();
		return false;
	}else if(document.myForm.lname.value==""){
		document.getElementById('spn2').innerHTML= "Please enter your Last Name";
		document.myForm.lname.focus();
		return false;
	}else if(document.myForm.dob.value==""){
		document.getElementById('spn3').innerHTML= "Please enter your Date of birth";
		document.myForm.dob.focus();
		return false;
	}else{
		document.getElementById('result').innerHTML= "Hello "+document.myForm.fname.value+" "+document.myForm.lname.value+" your Age is <br>"+age+" Years";
		//document.getElementById('result').innerHTML= "Hello "+ageD;
		return false;
	}

	return true; 
}