<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<html>
   <head>
   <title>Hello Spring MVC</title> 
    <link href="<%=request.getContextPath()%>/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	</head>
   <body>  
  
<div class="container"> 
	<h1>Add New Book</h1>
	<form:form class="form-horizontal" method="post" action="saveBook"> 
	  <div class="form-group">
	    <label for="exampleInputBookName" class="col-sm-2 control-label">Book Name :</label>
	    <div class="col-sm-10">
	      <form:input path="bookName" class="form-control" id="exampleInputBookName" />
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPrice" class="col-sm-2 control-label">Price :</label>
	    <div class="col-sm-10">
	      <form:input path="price" class="col-sm-2 control-label" id="exampleInputPrice" />
	    </div>
	  </div>
	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">
	      <input class="btn btn-success" type="submit" value="Save" />
          	<a href="getAllBooks" class="btn btn-warning">Cancel</a>
	    </div>
	  </div>
	</form:form>
</div>

   <script src="<%=request.getContextPath()%>/webjars/jquery/1.9.1/jquery.min.js"></script>
   <script src="<%=request.getContextPath()%>/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   
 </body>
</html>