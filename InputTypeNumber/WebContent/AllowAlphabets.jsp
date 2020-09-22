<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Html5 HTML FORM take only letters</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>
<body>
 <div class="jumbotron jumbotron-fluid"> 
<div class="container"> 
 <center><h1>HTML5 Validate Input type alphabets Using Jquery Keyup Function</h1></center> 
</div> 
 <div class="row"> 
 <div class="col-sm-4"></div> 
 <div class="col-sm-4"> 
 <label>Accept alphabets only</label> 
 <input class="form-control alphabets" id="alphabets1" type="text"> 
 </div> 
 </div>   
 </div>
   <script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    
  <script type="text/javascript"> 
 
    $(document).ready(function () { 
	$('.alphabets').keyup(function () { 
	if($(this).val().trim()!=""){ 
	var regEx = /^[a-zA-Z ]+$/i; 
	  var val = $(this).val(); 
	   
	  if (val.trim()!=="" && !regEx.test(val.trim().replace(/^\s*|\s*$/g, ''))) { 
		alert('Please enter only alphabets'); 
		$(this).val(''); 
	} } 
	}); 
       
	}); 
	   </script>  
</body>
</html>