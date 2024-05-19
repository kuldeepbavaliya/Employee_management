<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
<body>

 <div class="row">
	    		<div class="col-4"></div>
	    		<div class="col-4">
		<form action="createEmployee" method="post">
		  <div class="mb-3">
		    <label  class="form-label" >Emp first name:</label>
		    <input type="text" name="fname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
		    <div id="emailHelp" class="form-text"></div>
		  </div>
		  <div class="mb-3">
		    <label  class="form-label" >Emp last name:</label>
		    <input type="text" name="lname" class="form-control" id="exampleInputPassword1">
		  </div>
			<div class="mb-3">
		    <label  class="form-label" >Emp Salary:</label>
		    <input type="text" name="salary" class="form-control" id="exampleInputPassword1">
		  </div>		  
		  <div class="mb-3">
		    <label  class="form-label">Emp Doj:</label>
		    <input type="text" name="doj" class="form-control"  id="exampleInputPassword1">
		  </div>
		  <div class="mb-3">
		    <label  class="form-label">Emp Department:</label>
		    <select name="department">
		    <option></option>
		    <option value="1">It</option>
		    <option value="2">sales</option>
		    <option value="3">marketing</option>
		    <option value="4">development</option>
		    
		    </select>
		  </div>
	
		  <button type="submit" class="btn btn-primary">Submit</button>
		  <br>
		  	  
		</form>
		<a href="createEmployee.jsp">
		  <button type="submit" class="btn btn-primary">Reset</button>
		  </a>
		  	<br> 
		<a href="index.jsp">
		  <button type="submit" class="btn btn-primary">Cencal</button>
		  </a>  
		</div>
	    		<div class="col-4"></div>
	    		
    		</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>                                                      
</body>
</html>