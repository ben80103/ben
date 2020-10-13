<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	response.setContentType("text/html;charset=UTF-8");
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", -1); // Prevents caching at the proxy server
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
fieldset {
	width: 500px;
	margin: 0px auto;
	border: 8px #FFD382 groove;
	border-radius: 15px;
}

body {
	background: rgb(252, 218, 154);
}

.cow {
	margin: 1%;
	float: left;
	clear: left;
	margin-left: 30%;
}

td, th {
	padding: 10px;
	text-align: center;
}
</style>
<title>活動</title>
</head>
<body>


	<form action=".\SelectCampingServlet" method="post">
		<div class="cow">
			<div>
				<h3>活動查詢</h3>
				<input type="submit" value="查詢"> <input type="button"
					onclick="location.href='Camping.jsp'" value="新增活動">
			</div>
		</div>
	</form>
	<table class="cow">

		<thead>
			<tr>
				<th>舉辦人:</th>
				<th>活動日期:</th>
				<th>營地名稱:</th>
				<th>地址:</th>
				<th>人數:</th>
			</tr>
		</thead>
		<div class="cow">
			<c:forEach var="i" items="${camping}">
				<tr>
					<p>
					<td>${i.campingname}</td>
					<td>${i.campingdate}</td>
					<td>${i.campingcontent}</td>
					<td>${i.address}</td>
					<td>${i.people}</td>
					</p>
				</tr>
				<td><form action="<c:url value='/delServlet' />" method="post"> <input class="del" type="hidden"
						name="delete" value="${i.campingname}"> <input
						type="submit" value="刪除"></form></td>
			</c:forEach>

		</div>
	</table>

</body>
</html>