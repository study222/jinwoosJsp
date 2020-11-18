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
<body style="background-color: purple">
	<div class="w3-content w3-center mw800">
			<div class="w3-margin-top w3-padding w3-aqua w3-text-gray" style="font-size: 20pt;"><span class="w3-text-red">${NAME}</span>과(와) 같은성씨를 가진 사람은 <span class="w3-text-red">${CNT}</span>명입니다.</div>
		
		<div class="w3-green" style="margin-top: 30px; width: 500px; display: inline-block; border: 3px solid purple;">
			<form method="POST" action="/cls/work/resultOfResult.cls" name="frm" id="frm">
				<input type="hidden" id="mno" name="mno">
			</form>
		<c:forEach var="data" items="${LIST}">
				<div class="w3-button w3-margin w3-blue w3-hover-red info" id="${data.mno}">${data.name}</div>
		</c:forEach>
		</div>
		
		<div class="w3-col w3-card-4 w3-padding w3-aqua ifm" style="margin-top: 50px; display: none;">
			<div class="w3-col">
				<div class="w3-col" style="width: 250px; padding: 10px;">
					<div style="width: 100%; height: auto;">
						<img src="" style="width: 250px; height: auto;" id="avatar">
					</div>
				</div>
				<div class="w3-rest pdr10">
					<div class="w3-col w3-margin-top">
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">회원번호 : </span><span class="w3-twothird w3-center" id="tno"></span></h4>
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">회원이름 : </span><span class="w3-twothird w3-center" id="name"></span></h4>
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">회원아이디 : </span><span class="w3-twothird w3-center" id="id"></span></h4>
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">회원메일 : </span><span class="w3-twothird w3-center" id="mail"></span></h4>
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">성 별 : </span><span class="w3-twothird w3-center" id="gen"></span></h4>
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">가입일 : </span><span class="w3-twothird w3-center" id="sdate"></span></h4>
					</div>
				</div>
			</div>
		</div>
			
			<div class="w3-col w3-khaki w3-hover-yellow w3-button w3-margin-top" id="hbtn">HOME</div>
	</div>
</body>
</html>