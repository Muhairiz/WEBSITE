
function ageCal(){
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
		document.getElementById('result').innerHTML= "Hello "+document.myForm.fname.value+" "+document.myForm.lname.value+" your Age is ";
		return false;
	}

	return true; 
}