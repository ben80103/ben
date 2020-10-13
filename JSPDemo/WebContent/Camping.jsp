 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
response.setContentType("text/html;charset=UTF-8");
response.setHeader("Cache-Control","no-cache"); // HTTP 1.1
response.setHeader("Pragma","no-cache"); // HTTP 1.0
response.setDateHeader ("Expires", -1); // Prevents caching at the proxy server
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>舉辦活動</title>
    <style>
        fieldset {
            width: 500px;
            margin: 0px auto;
            border: 8px #FFD382 groove;
            border-radius: 15px;
        }
        body{
            background: rgb(252, 218, 154);
        }
    </style>
</head>
<body>

    <form action=".\CampingServlet" method="post">

        <fieldset>
            <legend>活動新增</legend>
            <div>舉辦人:
                <input type="text" name="campingname" size="10" maxlength="10">
            </div>
            <div>日期:
                <input type="text" name="campingdate" size="10" maxlength="20">
            </div>
            <div>活動名子:
                <input type="text" name="campingcontent"size="50"    >
        </div>
        <div>地址:
            <input type="text" name="address" size="50" maxlength="50">
        </div>
        <div>人數:
            <input type="text" name="people" size="20">
        </div>
            <div>
                <div>
                    
                    <input type="submit" name="submit" value="新增活動">
                    
                </div>
            </div>
        </fieldset>
    </form>
</body>
</html>