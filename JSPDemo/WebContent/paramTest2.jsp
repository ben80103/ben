In paramTest2:
First name is <%=request.getParameter("first")%>
Last  name is <%=request.getParameter("last")%>

Looping through all the first names
<%
   String first[] = request.getParameterValues("first");
   for (int i=0; i<first.length; i++)
   {
      out.println(first[i]);
   }
%>