<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 
Illustration of DebugTag tag. 
-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<HTML>
<HEAD>
<TITLE>Using the Debug Tag</TITLE>
<LINK REL=STYLESHEET
      HREF="JSP-Styles.css"
      TYPE="text/css">
</HEAD>

<BODY>
<H1>Using the Debug Tag</H1>

<%@ taglib uri="/WEB-INF/csajsp-taglib.tld" prefix="csajsp" %>

Top of regular page. Blah, blah, blah. Yadda, yadda, yadda.
<P>

<csajsp:debug>
<B>Debug:</B>
<UL>
  <LI>Current time: <%= new java.util.Date() %>
  <LI>Requesting hostname: <%= request.getRemoteHost() %>
  <LI>Requesting Host IP: <%= request.getRemoteAddr() %>
  <LI>Session ID: <%= session.getId() %> 
</UL>
</csajsp:debug>

<P>
Bottom of regular page. Blah, blah, blah. Yadda, yadda, yadda.

</BODY>
</HTML>