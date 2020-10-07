 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
response.setContentType("text/html;charset=UTF-8");
response.setHeader("Cache-Control","no-cache"); // HTTP 1.1
response.setHeader("Pragma","no-cache"); // HTTP 1.0
response.setDateHeader ("Expires", -1); // Prevents caching at the proxy server
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>舉辦活動</title>
</head>
<body>
<h2>
活動
</h2>
<form action=".\CampingServlet" method="post">
<table  cellspacing="2" cellpadding="1" border="1" width="100%">
<tr>
    <td>舉辦人:</td>
    <td><input type="text" name="campingname" size="10" maxlength="10"></td>
</tr>
<tr>
    <td width="150">日期:</td>
    <td><input type="text" name="campingdate" size="10" maxlength="20"></td>
</tr>
<tr>
    <td width="300">舉辦內容:</td>
    <td><input type="text" name="campingcontent"size="50" ></td>
</tr>
<tr>
    <td width="150">地址:</td>
    <td><input type="text" name="address" size="50" maxlength="50"></td>
</tr>
<tr>
    <td>人數:</td>
    <td><input type="text" name="people" size="20"></td>
</tr>

</table>
<center>
<input type="submit" name="submit" value="送出">
</center>
</form>
</body>
</html>