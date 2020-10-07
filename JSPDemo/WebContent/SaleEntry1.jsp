<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Using jsp:setProperty</title>
<link REL=STYLESHEET
      HREF="JSP-Styles.css"
      TYPE="text/css">
</head>
<body>
<TABLE BORDER=5 ALIGN="CENTER">
  <TR><TH CLASS="TITLE">
      Using jsp:setProperty</TABLE>

<jsp:useBean id="entry" class="coreservlets.SaleEntry" />

<jsp:setProperty 
    name="entry" 
    property="itemID"
    value='<%= request.getParameter("itemID") %>' />
    
<%
int numItemsOrdered = 1;
try {
  numItemsOrdered = 
    Integer.parseInt(request.getParameter("numItems"));
} catch(NumberFormatException nfe) {}
%>
<jsp:setProperty 
    name="entry" 
    property="numItems"
    value="<%= numItemsOrdered %>" />

<% 
double discountCode = 1.0;
try {
  String discountString = 
    request.getParameter("discountCode");
  // Double.parseDouble not available in JDK 1.1.
  // discountCode = 
    // Double.valueOf(discountString).doubleValue();
    discountCode = 
      Double.parseDouble(discountString);
} catch(NumberFormatException nfe) {}
%>
<jsp:setProperty 
    name="entry" 
    property="discountCode"
    value="<%= discountCode %>" />

<BR>
<TABLE ALIGN="CENTER" BORDER=1>
<TR CLASS="COLORED">
  <TH>Item ID<TH>Unit Price<TH>Number Ordered<TH>Total Price
<TR ALIGN="RIGHT">
  <TD><jsp:getProperty name="entry" property="itemID" />
  <TD>$<jsp:getProperty name="entry" property="itemCost" />
  <TD><jsp:getProperty name="entry" property="numItems" />
  <TD>$<jsp:getProperty name="entry" property="totalCost" />
</TABLE>
</body>
</html>