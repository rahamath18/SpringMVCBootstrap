<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="col-sm-2 sidenav">

	<p>
		<a href="#">Register User</a>
	</p>
	<c:if test="${showWelcomePage eq 'false'}">
		<p>
			<a href="#">Connect BTS</a>
		</p>
		<p>
			<a href="#">View Token</a>
		</p>
		<p>
			<a href="#">Configure BTS</a>
		</p>
		<p>
			<a href="#">Configure MSG Type</a>
		</p>
	</c:if>
</div>