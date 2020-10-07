<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<TITLE>Shared Access Counts: Page 3</TITLE>
<LINK REL=STYLESHEET
      HREF="JSP-Styles.css"
      TYPE="text/css">
</HEAD>

<BODY>

<TABLE BORDER=5 ALIGN="CENTER">
  <TR><TH CLASS="TITLE">
      Shared Access Counts: Page 3</TABLE>
<P>
<jsp:useBean id="counter" 
             class="coreservlets.AccessCountBean"
             scope="application">
  <jsp:setProperty name="counter" 
                   property="firstPage"
                   value="SharedCounts3.jsp" />
</jsp:useBean>

Of SharedCounts3.jsp (this page), 
<A HREF="SharedCounts1.jsp">SharedCounts1.jsp</A>, and
<A HREF="SharedCounts2.jsp">SharedCounts2.jsp</A>, 
<jsp:getProperty name="counter" property="firstPage" />
was the first page accessed.
<P>
Collectively, the three pages have been accessed 
<jsp:getProperty name="counter" property="accessCount" />
times.
             
</BODY>
</HTML>