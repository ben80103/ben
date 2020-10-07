<!--
	File: counter_xml.jsp
	This example shows the usage of the XML syntax
	for writing JSP pages
-->

<jsp:root
         xmlns:jsp="http://java.sun.com/JSP/Page"
         version="2.0">

   <html><body>
   
      <jsp:directive.page language="java" />

   
      <jsp:declaration>
         int count = 0;
      </jsp:declaration>

   
      <jsp:scriptlet>
         count++;
      </jsp:scriptlet>


      <jsp:text>
         Welcome! You are visitor number
      </jsp:text>


      <jsp:expression>
         count
      </jsp:expression>

   </body></html>

</jsp:root>
