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
       <form:form method="post" action="saveBook">    
        <table class="table">    
         <tr>    
          <td><label for="exampleInputBookName">Book Name :</label></td>   
          <td><form:input path="bookName" class="form-control" id="exampleInputBookName" /></td>  
         </tr>    
         <tr>    
          <td><label for="exampleInputPrice">Price :</label></td>    
          <td><form:input path="price" class="form-control" id="exampleInputPrice" /></td>  
         </tr>   
         <tr>    
          <td colspan="2" class="text-center">
          	<input class="btn btn-success" type="submit" value="Save" />
          	<a href="getAllBooks" class="btn btn-warning">Cancel</a>
          </td>  
         </tr>    
        </table>    
       </form:form>    
       </div> 
       
   <script src="<%=request.getContextPath()%>/webjars/jquery/1.9.1/jquery.min.js"></script>
   <script src="<%=request.getContextPath()%>/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 
 </body>
</html>