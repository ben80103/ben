<%--
	File: orderOfScriptlets.jsp
	This example shows the importance of the order of scriptlets.
--%>

<html>
<body>
   <%-- the correct order demo for s2 --%>
  
   <%  String s2 = "world";  %> 
  
   
   <%  String s  = s1+s2;   %>   <%-- Error: undefined variable s2 --%>

   
   <%! String s1 = "hello"; %>   
   
   
   <%-- Member variable s1           --%>

   <%-- Local variable s2 : wrong order demo          --%>
   
   <%-- 
   <%  String s2 = "world"; %>    
   --%>
   
   <%  out.print(s);        %>
</body>
</html>
