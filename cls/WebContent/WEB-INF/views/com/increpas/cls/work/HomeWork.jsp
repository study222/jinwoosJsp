<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/cls/css/w3.css">
<link rel="stylesheet" type="text/css" href="/cls/css/cls.css">
<script type="text/javascript" src="/cls/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/cls/js/work/work.js"></script>
</head>
<body style="background-color: green;">
	<div class="w3-content mw700 w3-center">
		<div class="w3-deep-orange w3-text-aqua" style="width: 300px; margin-top: 100px; margin-left: 200px; font-size: 40pt; font-weight: bold;">성씨 검색</div>
		<form class="w3-margin-top" method="POST" action="/cls/work/result.cls" id="frm" name="frm">
			<input class="w3-margin-top" type="text" name="name" id="name" placeholder="이름을 입력하세요." style="width: 300px; height: 50px;">
		</form>
		<div class="w3-content w3-margin-top" style="width: 300px;">
			<div class="w3-half w3-button w3-red w3-hover-blue w3-margin-top" id="src">검색</div>
			<div class="w3-half w3-button w3-blue w3-hover-red w3-margin-top" id="hbtn">HOME</div>
		</div>
	</div>
</body>
</html>