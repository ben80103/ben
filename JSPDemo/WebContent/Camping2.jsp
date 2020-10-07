<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
response.setContentType("text/html;charset=UTF-8");
response.setHeader("Cache-Control","no-cache"); // HTTP 1.1
response.setHeader("Pragma","no-cache"); // HTTP 1.0
response.setDateHeader ("Expires", -1); // Prevents caching at the proxy server
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>舉辦活動</title>
</head>
<body>
<jsp:useBean id="reg_camping" class="mvcdemo.bean.CampingBean" scope="session" />
<h2>
請確認
</h2>
<form action=".\CampingServlet" method="post">
<table  cellspacing="2" cellpadding="1" border="1" width="100%">
<tr bgcolor="#FFFFE1">
    <td>姓名:</td>
    <td><jsp:getProperty name="reg_camping" property="campingname" /></td>
</tr>
<tr bgcolor="#F2F4FB">
    <td width="150">日期:</td>
    <td> <jsp:getProperty name="reg_camping" property="campingdate" /></td>
</tr>
<tr bgcolor="#FFFFE1">                
    <td width="300">活動內容:</td>
    <td><jsp:getProperty name="reg_camping" property="campingcontent" /></td>
</tr>
<tr bgcolor="#F2F4FB">
    <td width="150">地址:</td>
    <td><jsp:getProperty name="reg_camping" property="address" /></td>
</tr>
<tr bgcolor="#FFFFE1">
    <td>人數</td>
    <td><jsp:getProperty name="reg_camping" property="people" /></td>
</tr>

</table>
<center>
<input type="submit" name="confirm" value="確認" >
</center>
</form>
</body>
</html>