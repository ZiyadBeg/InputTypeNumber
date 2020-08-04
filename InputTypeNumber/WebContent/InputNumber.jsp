<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Html5 input type</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>

<div class="container">

  <center><h1>Input type number</h1></center>
    <br />
<br />
<div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-6">
    Input type number: <input type="number"  id="inputnumber1"  name="Inputnumber" required="required" placeholder="Input type number"/>
   </div>
   </div>
   
   
   
  <br />
<br />
<div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-6">

    Input type number: <input type="text"  onkeypress="return event.charCode >= 48 && event.charCode <= 57"  id="inputnumber2"  name="inputnumber2" required="required" placeholder="Input type number"/>
   
   </div>
   </div>
  
<br />
<br />

<div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-6">

    Input type number: <input type="number"   onkeypress="return event.charCode >= 48 && event.charCode <= 57" id="inputnumber3"  name="inputnumber3" required="required" placeholder="Input type number"/>
   
   </div>
   </div>
</div>



<br />
<br />
<div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-6">

    Input type number: <input type="text"  id="inputnumber4"  class="inputnumber"  name="inputnumber4" required="required" placeholder="Input type number"/>
   
   </div>
   </div>


  <script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    
    <script type="text/javascript">
    $(document).ready(function () {

    	$('.decimal1').keyup(function () {
    	            var val = $(this).val();
    	            //alert(val);
    	            if (isNaN(val)) {
    	                val = val.replace(/[^0-9\.]/g, '');
    	                if (val.split('.').length > 2)
    	                    val = val.replace(/\.+$/, "");
    	            }
    	            var checkfordigit = val.split(".");
    	            if (checkfordigit.length == 2) {
    	                if (checkfordigit[1].length > 3) {
    	                    val = Number.parseFloat(val).toFixed(2);
    	                }
    	            }
    	            $(this).val(val);

    	        });
    	
    	$('.inputnumber').keyup(function () {
    		var pattern = new RegExp(/^\d*$/);
            var val = $(this).val();
            if (isNaN(val)) {
            	 $(this).val('');
            }else{
            	var checkfordigit = val.split(".");
                if (checkfordigit.length > 1) {	
                	$(this).val('');
                }
              }
        });
    	
    	/*
    	$('.inputnumber').keyup(function () {
    		var pattern = new RegExp(/^\d*$/);
            var val = $(this).val();
            if (isNaN(val)) {
            	 $(this).val('');
            }else{
            	if(pattern.test(val)){
            		console.log('Input type is a number');
            	}else{
            		console.log('Not a number');
            	}
              }
        });*/
    	
    });
    </script>
</body>
</html>