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
	login page <br><br>
	
	<div style="margin-right: 0px">
		<form action="login_chk" method="post">
			<input type="text" name="id"><br>
			<input type="text" name="pw"><br>
			<input type="submit" value="로그인"><br>
			<a href="register">회원가입</a>
		</form>
	</div>
	
<c:import url="../default/footer.jsp" />
</body>
</html>