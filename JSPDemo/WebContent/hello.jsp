<%@ page errorPage="errorHandler.jsp" %>
<html>
<body>
   <%
      if (request.getParameter("name")==null)
      {
         throw new RuntimeException("Name not specified");
      }
   %>
   Hello <%=request.getParameter("name")%>!
</body>
</html>
