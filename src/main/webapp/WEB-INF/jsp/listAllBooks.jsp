<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<html>
   <head>
       <title>Hello Spring MVC</title>
       <link href="<%=request.getContextPath()%>/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
   </head>
   
   <script type="text/javascript">
   
   function openPopup(url, name, width, height)
   {
   window.open(url, name, "width=" + width + ",height=" + height + 
 	  ",status=no,toolbar=no,menubar=no,location=no");
   }
   
   </script>
   
   <body>
   
   <div class="container">
   <h2>${message}</h2>
		<table class="table table-striped table-bordered table-hover" border="2" width="70%" cellpadding="2">  
		<tr>
			<th class="text-center">Id</th>
			<th class="text-center">Book Name</th>
			<th class="text-center">Price </br>INR</th>
			<th class="text-center">Edit</th>
			<th class="text-center">Delete</th>
			<th class="text-center">View</th>
			<th class="text-center"> Edit / Delete / View</th>
		</tr>  
	   <c:forEach var="book" items="${list}">   
		   <tr>  
			   <td>${book.id}</td>  
			   <td>${book.bookName}</td>  
			   <td>INR ${book.price}</td>  
			   <td><a href="editBook/${book.id}" class="btn btn-primary">Edit</a></td>  
			   <td><a href="deleteBook/${book.id}" class="btn btn-danger">Delete</a></td>  
			   <td><button type="button" class="btn btn-info"  
onclick="openPopup('<%= request.getContextPath() %>/book/viewBook/${book.id}', 'Popup', 640, 480);">View</button></td>  

			   <td>
			   		<!-- Split button -->
					<div class="btn-group">
					  <button type="button" class="btn btn-danger">Action</button>
					  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    <span class="caret"></span>
					    <span class="sr-only">Toggle Dropdown</span>
					  </button>
					  <ul class="dropdown-menu">
					    <li><a href="editBook/${book.id}" class="btn btn-primary">Edit</a></li>
					    <li><a href="deleteBook/${book.id}" class="btn btn-danger">Delete</a></li>
						<li><a href="#" class="btn btn-info"
onclick="openPopup('<%= request.getContextPath() %>/book/viewBook/${book.id}', 'Popup', 640, 480);">View</a></li>
					  </ul>
					</div>
			   </td>

		   </tr>  
	   </c:forEach>  
	   </table>  
	</div>
   <div class="container">
    	<a href="<%=request.getContextPath()%>/book/showAddBookForm" class="btn btn-success">Add Books by usual approach</a>  
    	<a href="<%=request.getContextPath()%>/book/showAddBookFormHorizontal" class="btn btn-success">Add Books by form-horizontal</a>
    	<a href="<%=request.getContextPath()%>/index.jsp" class="btn btn-warning">Cancel</a>  
   </div>
   <script src="<%=request.getContextPath()%>/webjars/jquery/1.9.1/jquery.min.js"></script>
   <script src="<%=request.getContextPath()%>/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   
   </body>
</html>