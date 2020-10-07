<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<pre>

In paramTest1:
First name is <%=request.getParameter("first")%>
Last  name is <%=request.getParameter("last")%>

<jsp:include page="paramTest2.jsp" >
  <jsp:param name="first" value="mary" />
  <jsp:param name="first" value="janiffer" />
</jsp:include>
In paramTest1:
First name is <%=request.getParameter("first")%>
Last  name is <%=request.getParameter("last")%>

</pre>
</body>
</html>