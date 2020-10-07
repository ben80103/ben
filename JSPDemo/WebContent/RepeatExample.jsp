<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 
Illustration of RepeatTag tag. 
-->
<HTML>
<HEAD>
<TITLE>Some 40-Digit Primes</TITLE>
<LINK REL=STYLESHEET
      HREF="JSP-Styles.css"
      TYPE="text/css">
</HEAD>

<BODY>
<H1>Some 40-Digit Primes</H1>
Each entry in the following list is the first prime number 
higher than a randomly selected 40-digit number.

<%@ taglib uri="WEB-INF/csajsp-taglib.tld" prefix="csajsp" %>

<OL>
<!-- Repeats N times. A null reps value means repeat once. -->
<csajsp:repeat reps='<%= request.getParameter("repeats") %>'>
  <LI><csajsp:prime length="40" />
</csajsp:repeat>
</OL>

</BODY>
</HTML>