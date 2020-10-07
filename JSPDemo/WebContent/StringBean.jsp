<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="coreservlets.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Using JavaBeans with JSP</title>
<link REL=STYLESHEET
      HREF="JSP-Styles.css"
      TYPE="text/css">
</head>
<body>
<TABLE BORDER=5 ALIGN="CENTER">
  <TR><TH CLASS="TITLE">
      Using JavaBeans with JSP</TABLE>
 
<jsp:useBean id="stringBean" class="coreservlets.StringBean" />

<OL>
<LI>Initial value (getProperty):
    <I><jsp:getProperty name="stringBean" 
                        property="message" /></I>

<LI>Initial value (JSP expression):
    <I><%= stringBean.getMessage() %></I>
<LI><jsp:setProperty name="stringBean" 
                     property="message" 
                     value="Best string bean: Fortex" />
    Value after setting property with setProperty:
    <I><jsp:getProperty name="stringBean" 
                        property="message" /></I>

<LI><% stringBean.setMessage("My favorite: Kentucky Wonder"); %>
    Value after setting property with scriptlet:
    <I><%= stringBean.getMessage() %></I>
</OL>

</body>
</html>