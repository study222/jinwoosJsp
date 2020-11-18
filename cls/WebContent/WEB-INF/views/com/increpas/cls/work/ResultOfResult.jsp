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
		<div class="w3-margin-top w3-padding" style="background-color: blue; font-size: 24pt; color: red;">회원정보</div>
		
		<div class="w3-col w3-card-4 w3-padding w3-aqua" style="margin-top: 50px;">
			<div class="w3-col">
				<div class="w3-col" style="width: 250px; padding: 10px;">
					<div style="width: 100%; height: auto;">
						<img src="/cls/img/avatar/${DATA.avatar}" style="width: 250px; height: auto;">
					</div>
				</div>
				<div class="w3-rest pdr10">
					<div class="w3-col w3-margin-top">
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">회원번호 : </span><span class="w3-twothird w3-center">${MNO}</span></h4>
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">회원이름 : </span><span class="w3-twothird w3-center">${DATA.name}</span></h4>
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">회원아이디 : </span><span class="w3-twothird w3-center">${DATA.id}</span></h4>
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">회원메일 : </span><span class="w3-twothird w3-center">${DATA.mail}</span></h4>
					<c:if test="${DATA.gen eq 'M'}">
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">성 별 : </span><span class="w3-twothird w3-center">남자</span></h4>
					</c:if>
					<c:if test="${DATA.gen ne 'M'}">
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">성 별 : </span><span class="w3-twothird w3-center">여자</span></h4>
					</c:if>
						<h4 class="w3-col w3-text-orange ft18px mh3"><span class="w3-third w3-right-align">가입일 : </span><span class="w3-twothird w3-center">${DATA.sdate}</span></h4>
					</div>
				</div>
			</div>
		</div>
		
		<div class="w3-col w3-button w3-deep-orange w3-hover-orange w3-margin-top" id="hbtn">HOME</div>
	</div>
</body>
</html>