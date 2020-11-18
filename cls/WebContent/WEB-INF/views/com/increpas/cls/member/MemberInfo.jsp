<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<link rel="stylesheet" type="text/css" href="/cls/css/w3.css">
<link rel="stylesheet" type="text/css" href="/cls/css/cls.css">
<script type="text/javascript" src="/cls/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/cls/js/member/memberInfo.js"></script>
</head>
<body>
	<div class="w3-content w3-center mw700">
		<h1 class="w3-deep-purple w3-card-4">${DATA.name}님 회원정보</h1>
		<div class="w3-col">
			<h5 class="w3-cell m2 w3-button w3-small w3-deep-purple w3-hover-purple w3-left mt0 btnBox" id="hbtn">HOME</h5>
			<h5 class="w3-cell m2 w3-button w3-small w3-deep-purple w3-hover-purple w3-right mt0 btnBox" id="dbtn">탈퇴</h5>
			<h5 class="w3-cell m2 w3-button w3-small w3-deep-purple w3-hover-purple w3-right w3-border-right mt0 btnBox" id="iebtn" style="">정보수정</h5>
		</div>
		<form method="POST" action="/cls/member/memberDel.cls" id="dfrm" name="dfrm" class="w3-col w3-card-4 w3-padding w3-margin-bottom" style="display: none;">
			<label for="pw" class="w3-col m3 w3-text-gray ft18px">비밀번호 : </label>
			<input type="hidden" name="no" id="no" value="${DATA.mno}">
			<input type="password" id="pw" name="pw" class="w3-col m7 w3-input w3-border">
			<div class="w3-col m2 pdh10">
				<div class="w3-col w3-button w3-midium w3-red w3-hover-orange w3-left mt0" id="del">탈퇴처리</div>
			</div>
		</form>
		<div class="w3-col w3-card-4 w3-margin-top w3-padding">
			<div class="w3-col">
				<div class="w3-col w250 pd10">
					<div class="w3-border infoAvtBox">
						<img src="/cls/img/avatar/${DATA.avatar}" class="infoAvtBox" id="avtimg">
					</div>
				</div>
				<div class="w3-rest pdr10">
					<div class="w3-col">
						<h4 class="w3-col w3-text-gray ft18px mh3"><span class="w3-third w3-right-align" id="no">회원번호 : </span><span class="w3-twothird w3-center">${DATA.mno}</span></h4>
						<h4 class="w3-col w3-text-gray ft18px mh3"><span class="w3-third w3-right-align">회원이름 : </span><span class="w3-twothird w3-center">${DATA.name}</span></h4>
						<h4 class="w3-col w3-text-gray ft18px mh3"><span class="w3-third w3-right-align">아 이 디 : </span><span class="w3-twothird w3-center">${DATA.id}</span></h4>
						<h4 class="w3-col w3-text-gray ft18px mh3"><span class="w3-third w3-right-align">회원메일 : </span><span class="w3-twothird w3-center" id="cMail">${DATA.mail}</span></h4>
						<h4 class="w3-col w3-text-gray ft18px mh3"><span class="w3-third w3-right-align">회원성별 : </span>
							<span class="w3-twothird w3-center">
								<c:if test="${DATA.gen eq 'M'}">남 자</c:if>
								<c:if test="${DATA.gen == 'F'}">여 자</c:if>
							</span>
						</h4>
						<h4 class="w3-col w3-text-gray ft18px mh3"><span class="w3-third w3-right-align">가 입 일 : </span><span class="w3-twothird w3-center">${DATA.sdate}</span></h4>
					</div>
				</div>
			</div>
			
			<!-- 정보수정태그 -->
			<form class="w3-col" id="frm" name="frm" style="display: none">
				<div class="w3-col w3-border-top w3-margin-top w3-padding">
					<span class="w3-cell m2 w3-button w3-small w3-blue w3-hover-aqua w3-right mt0 btnBox" id="ebtn">수 정</span>
				</div>
				
				<div class="w3-col">
					<label for="mail" class="w3-col l3 m3 w3-right-align w3-padding clslbl">회원 이메일 : </label>
					<div class="w3-col l9 m12 w3-padding">
						<input type="text" class="w3-input w3-border" id="mail" name="mail" value="${DATA.mail}">
					</div>
				</div>
				
				<div class="w3-col w3-margin-bottom">
					<label class="w3-col l3 m3 w3-right-align w3-padding clslbl">아바타 선택 : </label>
					<div class="w3-col l9 m12 w3-padding">
						<div class="w3-col" id="avtfr">
							<c:forEach var="data" items="${LIST}">
								<c:if test="${data.gen == DATA.gen}">
									<div class="w3-third w3-center w3-padding avt${data.gen}fr">
										<input type="radio" class="w3-col w3-radio-medium avt" name="avt" value="${data.ano}">
										<div class="w3-col w3-border imgbox">
											<img src="/cls/img/avatar/${data.savename}" class="imgsrc">
										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>