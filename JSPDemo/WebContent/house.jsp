<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<!-- functionCheck 的 value對應值 -->
<!-- 會員登入 = logging -->
<!-- 會員資料 = memberInfo -->
<!-- 資料維護 = maintainInfo -->
<!-- 百戰百岳 = mountain -->
<!-- 露營地/山中小屋 = house -->
<!-- 購物商城 = shopping -->
<!-- 討論區 = platform -->

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>露營地/山中小屋</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@800&display=swap"
	rel="stylesheet">
 <link rel="stylesheet" href="../../pan/cssFolder/index.css">
<style>
 .moup {
            position: relative;
            margin: 5% 5% 0% 5%;
            /* margin-left: %;
     margin-top: 10%; */
            /* background-color: aqua; */
            width: 20%;
            float: left;
			clear:right;
	
        }
        .cow{
        margin:1%;
        float: left;
        clear:left;
        margin-left:30%;
        }
        td,th{padding:10px;
        text-align:center;
        }
       
</style>
</head>

<body>

<c:set var='functionCheck'  value="house" scope="session"/>


	<div id="container">
	
		<!-- 引入共同頁首 -->
		<jsp:include page='/fragment/topbar.jsp' />

		
		<!-- 主要內容 -->
		
		
		<div id="content">
		<form action="<c:url value='HouseServlet'></c:url>"method='post'>	
		<div class="moup">
                <div class="search">
                <h3>觀看</h3>
                <input type="submit" value="查詢">
		</div></div>
		</form>
         
		<form action="<c:url value='SelectMountainServlet'></c:url>"method='post'>	
			<div class="moup">
                <div class="search">
                    <label>那座山是哪座山</label>
                    
              <select name="smountain" id="smountain" class="form-control">
              <option>玉山國家公園</option>
              <option>雪霸國家公園</option>
              <option>太魯閣國家公園</option>
              
              </select>
                    <input type="submit" value="查詢" >
                    </div>
                    </div>
</form>
<form action="<c:url value='SelectMountainHouseServlet'></c:url>"method='post'>	
			<div class="moup">
                <div class="search">
                <label>山中小屋名</label>
     
                 <input type="text" name="sname" class="form-control" tabindex="28" >   
                        
                    
                    <input type="submit" value="查詢">
                    </div>
                    </div>
</form>

<table class="cow">
		<thead>
		<tr><th>山</th><th>房名</th><th>床位</th><th>營地位</th><th>海拔</th></tr>
		</thead>
		<body>
<div class="cow">	
		<c:forEach var="i" items="${all}">
		<tr><p><td>${i.mountainName}  </td><td>  ${i.name}   </td><td>  ${i.seat}  </td><td>  ${i.campSeat}  </td><td>  ${i.hight}  </td></p></tr>
		
		</c:forEach>
		
    </div>
        
<div class="cow">	
	<c:forEach var="k" items="${mountain}" >
		<tr><p><td>${k.mountainName}  </td><td>  ${k.name}   </td><td>  ${k.seat}  </td><td>  ${k.campSeat}  </td><td>  ${k.hight}  </td></p></tr>
		</c:forEach>
		
    </div>

    <div class="cow">	
    
		<c:forEach var="j" items="${name}">
		<tr><p><td>${j.mountainName}  </td><td>  ${j.name}   </td><td>  ${j.seat}  </td><td>  ${j.campSeat}  </td><td>  ${j.hight}  </td></p></tr>
		</c:forEach>
		
    </div>
    </body>
		</table>
        
    
    
		</div>

		<footer> 
		
		</footer>

	</div>


	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
	 <script src="../../pan/jsFolder/index.js"></script> 
	<script id="contentCov"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
		
		
</body>

</html>