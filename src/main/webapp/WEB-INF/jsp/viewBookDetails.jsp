<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<html>
	<head>
		<title>Hello Spring MVC</title>
		<link href="<%=request.getContextPath()%>/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	</head>
   <body>
     <div class="container">  
     <h1><marquee>View Book</marquee></h1>  
        <table class="table">    
        <tr>  
        	<td></td>    
        	<td><form:hidden  path="id" /></td>  
         </tr> 
         
         <tr>    
          <td><label for="exampleInputBookName">Book Name :</label></td>   
          <td>${book.bookName}</td>  
         </tr>    
         <tr>    
          <td><label for="exampleInputPrice">Price :</label></td>    
          <td><c:out value="${book.price}"/></td>  
         </tr>   
         <tr>    
          <td colspan="2" class="text-center">
          	<button type="button" class="btn btn-warning" onclick="javascript:window.close();">Close</button>
          </td>  
         </tr>    
        </table>    
       </div> 
       
   <script src="<%=request.getContextPath()%>/webjars/jquery/1.9.1/jquery.min.js"></script>
   <script src="<%=request.getContextPath()%>/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 
 </body>
</html>