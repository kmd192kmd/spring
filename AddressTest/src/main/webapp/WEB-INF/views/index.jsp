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
	<!--index.jsp -->
    <h1>Address <small>Docker</small></h1>
    
    <p>주소록을 출력합니다.</p>
    
    <table>
        <tr>
            <th>번호</th>
            <th>이름</th>
            <th>나이</th>
            <th>성별</th>
            <th>주소</th>
        </tr>
        <c:forEach items="${list }" var="dto">
        <tr>
            <td>${dto.seq }</td>
            <td>${dto.name }</td>
            <td>${dto.age }</td>
            <td>${dto.gender }</td>
            <td>${dto.address }</td>
        </tr>
        </c:forEach>
    </table>
	
	<script src="https://code.jquery.com/jquery-4.0.0.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>

</body>
</html>