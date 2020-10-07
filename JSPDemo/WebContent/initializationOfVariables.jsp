<%--
	File: initializationOfVariables.jsp
	This example shows that the variables declared
	in a scriptlet must be initialized before use.
--%>

<html>
<body>
   <%! int i; %>
   
   <%-- local variable j must be initialized explicitly --%>
   
     
   <% int j=0; %>
   
   
   <%-- 
   <%  int j; %>
   --%>
   
   The value of i is <%= i++ %> <br> <%-- OK i is initialized --%>
   The value of j is <%= j++ %> <br> <%-- ERROR if j not initialized --%>

</body>
</html>
