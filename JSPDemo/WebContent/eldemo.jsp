<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Expression Language Demo</title>
</head>
<body>

<%
  //scripting elements
 
  String n = request.getParameter("n");
  String m = request.getParameter("m");
  out.println(n  + " + " + m + " = " + (Integer.parseInt(n) + Integer.parseInt(m)));
%>

<br>

  <%--  Expression Language elements  --%> 
  ${param.n} + ${param.m} = ${param.n + param.m}
  
  <br>
  <br>
  
  
  <%--Scripting elements --%>
  Method: <%= ((HttpServletRequest)pageContext.getRequest()).getMethod() %><br>
  QueryString: <%= ((HttpServletRequest)pageContext.getRequest()).getQueryString() %><br>
  PathInfo: <%= ((HttpServletRequest)pageContext.getRequest()).getPathInfo() %><br>
  <br>
  <br>
  
  <%--Expression language elements --%>
  Method: ${pageContext.request.method} <br>
  QueryString: ${pageContext.request.queryString} <br>
  PathInfo: ${pageContext.request.pathInfo} <br>
 
</body>
</html>