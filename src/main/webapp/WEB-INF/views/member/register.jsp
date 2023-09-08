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
<c:import url="../default/header.jsp" />
	<h1 style="text-align: center;">회원 가입</h1>
	
	<form action="register" method="post">
		<table border="1">
			<tr><td><input type="text" name="id" placeholder="아이디"><br></td></tr>
			<tr><td><input type="text" name="pw" placeholder="비밀번호"><br></td></tr>
			<tr><td><input type="text" name="addr" placeholder="주소"><br></td></tr>
			<tr><td colspan="3"><input type="submit" value=회원가입"></td></tr>
		</table>
	</form>
<c:import url="../default/footer.jsp" />
</body>
</html>