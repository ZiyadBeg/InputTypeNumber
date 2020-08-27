<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Html5 input type Decimal</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>
<body>
<div class="container">
 <center><h1>Input type Decimal</h1></center>
    <br />
<br />
</div>
<div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-6">

    Input type Decimal: <input type="text"  id="inputdecimal"  class="decimal"  name="inputdecimal" placeholder="Input type decimal"/>
   
   </div>
   </div>
   
<script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
   
   
    <script type="text/javascript">

    $(document).ready(function () {
    
    	$('.decimal').keyup(function () {
    		if($(this).val().trim()!=""){
        var val = $(this).val();
        if (isNaN(val)) {
           val = val.replace(/[^0-9\.]/g, '');
            if (val.split('.').length > 2)
                val = val.replace(/\.+$/, "");
        }
        var checkfordigit = val.split(".");
        if (checkfordigit.length == 2) {
            if (checkfordigit[1].length > 2) {
                val = Number.parseFloat(val).toFixed(2);
            }
        }
        $(this).val(val);
    		}
    	});
    });
    
    </script>
</body>
</html>