<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <c:set var="contextPath" value="${ pageContext.request.contextPath }"></c:set>
	<br><br>
	<h1 style="color:orange; text-align: center; margin: auto;">S project</h1>
	<br><br>
<hr>
	<header style="text-align: right;">
		<a href="${ contextPath }/index">HOME</a>
		<a href="${ contextPath }/list">List</a>
		<c:choose>
			<c:when test="${ id != null }">
				<a href="${ contextPath }/logout">LOGOUT</a>
			</c:when>
			<c:otherwise>
				<a href="${ contextPath }/login">LOGIN</a>
			</c:otherwise>
		</c:choose>
	</header>
<hr>
</body>
</html>