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
	<h1 style="text-align: center;">${ dto.id } 정보</h1>
	
	<table border="1" style="margin: auto; text-align: center;">
		<tr>
			<th>아이디</th> <th>비밀번호</th> <th>주소</th>
		</tr>
		<tr>
			<td>${ dto.id }</td> <td>${ dto.pw }</td> <td>${ dto.addr }</td>
		</tr>
		<tr>
			<td colspan="3"><a href="list">회원 목록</a></td>
		</tr>
	</table>

<c:import url="../default/footer.jsp" />
</body>
</html>