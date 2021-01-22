<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${pageContext.request.contextPath}</h1>

	<p>입력한 전화번호 내역입니다</p>
	
	
	<c:forEach items="${requestScope.pList}" var= "personVo">
	<table border="1">
	
		
			
		<tr>
			<td>이름</td>
			<td>${personVo.name}</td>
			
			
		</tr>
		<tr>
			<td>핸드폰</td>
			<td>${personVo.hp}</td>
			
		</tr>
		<tr>
			<td>회사</td>
			<td>${personVo.company}</td>
		</tr>
		<tr>
			<td><a href="${pageContext.request.contextPath}/phone/delete/${personVo.personId}">(삭제)</a></td>
			<td><a href="${pageContext.request.contextPath}/phone/modifyForm?personId=${personVo.personId}"> (변경)</a></td>
		</tr>
	
	</table>
	<br>
	</c:forEach>
	
	<a href="${pageContext.request.contextPath}/phone/writeForm">추가번호 등록</a>


</body>
</html>