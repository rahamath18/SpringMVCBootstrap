
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp"></jsp:include>

<jsp:include page="leftNav.jsp"></jsp:include>

<c:if test="${showWelcomePage eq true}">
	<jsp:include page="main1.jsp"></jsp:include> 
</c:if>

<c:if test="${showUserRegPage eq true}">
	<jsp:include page="main2.jsp"></jsp:include>
</c:if>

<jsp:include page="rightNav.jsp"></jsp:include>

<jsp:include page="footer.jsp"></jsp:include>