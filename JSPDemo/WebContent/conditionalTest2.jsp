<%--
	File: conditionalTest2.jsp
	This example shows the usage of writing conditional
	statements that spread across multiple scriptlets.
	Note the usage of the braces { and } to create blocks.
--%>

<%!
	boolean isUserLoggedIn(){ return true; }
	//boolean isUserLoggedIn(){ return false; }
	
	//NOTE:
	//Comment the first line above and
	//uncomment the second line to see
	//the else part being executed.
%>

<html><body><pre>

   <%
	  boolean isUserLoggedIn = isUserLoggedIn();

	  if (isUserLoggedIn) 
      {
   %>

      <h3>Welcome!</h3>                        <%-- If Part --%>
      A lot of HTML here...
   
   <%
      } 
      else 
      {
   %>
       
	   Hi! Please log in to access the member’s area.		<%-- Else part --%> 
       <A href="login.jsp">login</A>
	   A lot of HTML here...

   <%
      }
   %>

</pre></body></html>
