<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
</head>
<body>
	<!-- list.jsp -->
	<h1>결과</h1>
	
	<table>
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>나이</td>
			<td>주소</td>
			<td>성별</td>
		</tr>
		<c:forEach items="${list }" var="adto">
		<tr>
			<td>${adto.seq }</td>
			<td>${adto.name }</td>
			<td>${adto.age }</td>
			<td>${adto.address }</td>
			<td>${adto.gender }</td>
		</tr>
		</c:forEach>
	</table>

	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>

</body>
</html>