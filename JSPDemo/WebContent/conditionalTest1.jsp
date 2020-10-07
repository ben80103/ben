<%--
	File: conditionalTest1.jsp
	This example shows the usage of writing conditional
	statements in scriptlets. It prints HTML tags directly from
	the scriptlet using out.print();
--%>

<%!
	boolean isUserLoggedIn(){ return true; }
	//boolean isUserLoggedIn(){ return false; }
	
	//NOTE:
	//Comment the first line above and
	//uncomment the second line to see
	//the else part being executed.
%>


<html><body>
<%
	boolean isUserLoggedIn = isUserLoggedIn();

	if (isUserLoggedIn)
	{
		out.print("<h3>Welcome!</h3>");
	}
	else
	{
		out.println("Hi! Please login to access the members area.<br>");
		out.println("<A href=’login.jsp’>Login</A>");
	}
%>
</body></html>
