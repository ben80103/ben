<%@ page session="true" %>

	File: implicit.jsp
	This is an empty JSP page.
	It is just meant to see what the JSP engine generates
	when this page is accessed.	If you are using tomcat, go to
	<TOMCAT_HOME>\webapp\contextroot and open file implict$jsp.java
	to see what tomcat generates. Other servlet containers may use
	a different directory.
  <%@ page isErrorPage="true" %>  only when isErrorPage is true, then the exception implicit 
  variable will be declared in the _jspService()

