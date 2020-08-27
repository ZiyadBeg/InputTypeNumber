<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
<div class="jumbotron jumbotron-fluid" id="dataAdd">
            <div class="container">
                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label>First Name</label>
                    <input class="form-control" id="firstname1" type="text" />
                  </div>
                  <div class="form-group col-md-4">
                    <label>Last Name</label>
                    <input class="form-control" id="lastname1" type="text" />
                  </div>
				  <div class="form-group col-md-4">
                    <label>Middle Name</label>
                    <input class="form-control" id="middlename1" type="text" />
                </div>
        </div>
		 </div>
		 &nbsp;&nbsp;&nbsp;&nbsp; <button class="btn btn-success" id="addRow">Add row</button>&nbsp;&nbsp;&nbsp;&nbsp; <button class="btn btn-danger" id="deleteRow">Delete row</button>
  </div>
   <script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    
  <script type="text/javascript">

    $(document).ready(function () {
    
$("#addRow").click(function(){

var len=$('#dataAdd .container .form-row').length+1;

//if(len&gt;1)

 $("#dataAdd .container:last").append(' <div class="form-row">'+
                  '<div class="form-group col-md-4">'+
                 ' <label></label>'+
                 ' <input class="form-control" id="firstname'+len+'" type="text" />'+
                 ' </div>'+
                 '<div class="form-group col-md-4">'+
                 '<label></label>'+
                 '<input class="form-control" id="lastname'+len+'" type="text" />'+
                 ' </div> <div class="form-group col-md-4">'+
                 '<label></label>'+
                 '<input class="form-control" id="middlename'+len+'" type="text" />'+
				 '</div></div>');

			   });
    });
	
    
	$("#deleteRow").click(function(){
		
	var len=$('#dataAdd .container .form-row').length;
	if(len>1){
	
		$("#dataAdd .container .form-row").last().remove();
				}else{
			alert('Not able to Delete');
			}
		});
    </script>
</body>
</html>