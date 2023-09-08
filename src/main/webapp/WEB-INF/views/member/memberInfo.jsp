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

<c:if test="${ id == null }">
	<script type="text/javascript">
		alert("로그인 하세요");
		location.href="login";
	</script>
</c:if>

<c:import url="../default/header.jsp" />
	<h1 style="text-align: center;">회원 정보</h1>
	
	<table border="1" style="margin: auto;">
		<tr>
			<th>아이디</th> <th>비밀번호</th> <th>주소</th>
		</tr>
		<c:forEach var="d" items="${ list }">
			<tr>
				<td><a href="info?id=${ d.id }">${ d.id }</a></td> <td>${ d.pw }</td> <td>${ d.addr }</td>
			</tr>
		</c:forEach>
	</table>

<c:import url="../default/footer.jsp" />

</body>
</html>