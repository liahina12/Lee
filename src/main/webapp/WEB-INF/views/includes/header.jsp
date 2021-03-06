<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>    
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

<title>HomePage</title>
<style type="text/css">
* {box-sizing: border-box}
body {font-family: Arial, Helvetica, sans-serif;
  padding:20px;
  magin:20px;
}
.mySlides {display: none;}
img {vertical-align: middle;
  width:100%;
  height:600px;
}
#logo1{
	width:72px;
	height:72px;
}
.navbar1 {
  width: 100%;
  background-color: #32CD32;
  overflow: auto;
}
.navbar1 a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 17px;
  width: 25%; 
  text-align: center;
}

.navbar1 a:hover {
  background-color : #228B22;
}
#h1 {
  text-align:center;
}
#h1 a{
  text-decoration:none;
  color:#32CD32;
}
#footer {
   margin-top: 20px;
   padding: 20px;
   background-color: #32CD32;
   color: white;
   text-align: center;
}
</style>
</head>
<body>
<div id="header">
		<div >			
				<h1 id="h1">
				<img id="logo1" src="/resources/img/camping7.png">
					<a href="http://localhost:8080/main">EAS??????</a>
				</h1>						
		</div>
		<div class="navbar1">
			  <a href="http://localhost:8080/board/list">?????????????????????</a> 
			  <a href="http://localhost:8080/board/list2">????????????????????????</a> 
			  <!-- ????????? ???  -->
			  <c:if test="${ member == null }">
			  <a href="http://localhost:8080/member/login" class="loginbu" >?????????</a> 
			  <a href="http://localhost:8080/member/join">????????????</a>
			  </c:if >    					   
			  <!-- ????????? ??? -->  
			  <c:if test="${ member != null }">
              <a href="http://localhost:8080/member/logout">????????????</a> 
			  <a href="http://localhost:8080/member/profile">????????????</a>
              </c:if>
        </div>
</div>

