<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 관리</title>
<script type="text/javascript" src = "member.js"></script>
</head>
<body>
<c:if test = "${empty loginUser }">
	<jsp:forward page="login.do"></jsp:forward>
</c:if>
<h2>회원 전용 페이지</h2>
<form action="LogoutServlet">
	<table>
		<tr>
		<td>
			안녕하세요.${loginUser.name}(${loginUser.userid})님
		</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="로그아웃">&nbsp;&nbsp;
				<input type="button" value="회원 정보 변경" onclick="location.href='MemberUpdate.do?userid=${loginUser.userid}'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>