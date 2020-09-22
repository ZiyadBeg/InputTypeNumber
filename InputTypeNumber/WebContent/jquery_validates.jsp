<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>How to add validation in html form</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<style>
label.required:after {
  content: '*';
  color: #f00;
  font-weight: bold;
  margin-left: 5px;
}
</style>

</head>
<body>
 <div class="jumbotron jumbotron-fluid">
	<div class="container">
    <div class="alert alert-danger alert-dismissible" role="alert" id="err">
				<button class="close" type="button" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<i class="md md-lg md-error"></i> &nbsp; Fields marked with asterisk (*) are mandatory
			</div>
		<div class="block-header">
        <h2>html form validation</h2> </div>
        	 
        <div class="card">
        <div class="card-body card-padding">
      <form  action="yourAction" method="POST"  autocomplete="off">
                      
		<center><span id="show-error" style="color: red;-webkit-text-stroke-width: medium;"></span></center>
		<br><br>
		
			 <div class="row">
			<div class="col-sm-4">
                <div class="form-group">
					<label for="fromName" id="fromName" class="required">First Name</label>
					<input id="firstName" name="firstName" class="form-control field-required" type="text" placeholder="First Name">
            </div>
            </div>
		<div class="col-sm-4">
                <div class="form-group">
					<label for="fromMiddleName" id="fromMiddleName" >Middle Name</label>
					<input id="middleName" name="middleName" class="form-control" type="text" placeholder="Middle Name">
            </div>
            </div>
			<div class="col-sm-4">
                <div class="form-group">
					<label for="fromLastName" id="fromLastName" class="required">Last Name</label>
					<input id="lastName" name="lastName" class="form-control field-required" type="text" placeholder="Last Name">
            </div>
            </div>
			
			
			</div>
			<br />
			
			
			<div class="row">
            <div class="col-sm-4">
                <div class="form-group">
					<label for="fromPhone" id="fromPhone" class="required">Phone Number</label>
					<input id="phoneNum" name="phoneNum" class="form-control field-required" type="text" placeholder="Phone Number">
            </div>
            </div>
			<div class="col-sm-4">
                <div class="form-group">
					<label for="fromEmail" id="fromEmail" class="required">Email Id</label>
					<input id="emailid" name="emailid" class="form-control field-required" type="text" placeholder="Email Id">
            </div>
            </div>
			<div class="col-sm-4">
                <div class="form-group">
					<label for="fromAddress" id="fromAddress" class="required">Address</label>
					<textarea id="address" name="address" class="form-control field-required"  placeholder="Address"></textarea>
            </div>
            </div></div>
            
			<div class="row">
            <div class="col-sm-3">
			<div class="form-group">
                <label for="appBy">&nbsp;</label><br>
               <button class="btn btn-primary" id="btn" >SUBMIT FORM</button>
		<button type="button" class="btn btn-danger " id="back">Back</button>
			</div>
            </div>
			</div>
        
          
         </form>
           </div>
            </div>
 </div> </div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
   
   
    <script type="text/javascript">

    $(document).ready(function () {
	
	$('#btn').click(function () {
	var msg=checkFormValidity();
	 if(msg!=""){
	 	$('#show-error').html(msg);
		return false;
	 }else{
	 return true;
	 }
	});
	});
	
	function checkFormValidity(){
       var str="";
           
	 $('.field-required').each(function(){
		if(this.value==null || this.value.trim()==""){
		var msg="Please insert "+$(this).attr("placeholder")+" as this Fields required <br />";
		str+=msg+"" ;
		
		}
		
    });
	return str;
}

	    </script>
</body>
</html>