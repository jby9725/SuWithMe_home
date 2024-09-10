<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>수위드미</title>
<link rel="stylesheet" href="/resource/common.css" />
<script src="/resource/common.js" defer="defer"></script>
<!-- 제이쿼리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- 폰트어썸 FREE 아이콘 리스트 : https://fontawesome.com/v5.15/icons?d=gallery&p=2&m=free -->

<!-- 테일윈드 -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.1.4/tailwind.min.css"> -->
<!-- 테일윈드 치트시트 : https://nerdcave.com/tailwind-cheat-sheet -->
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css" rel="stylesheet" type="text/css" />

<!-- vanta.js 적용 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r121/three.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vanta/dist/vanta.waves.min.js"></script>

<style>
body {
	margin: 0;
	padding: 0;
}
</style>

<!-- Vanta.js 적용 스크립트 -->
<script>
	document.addEventListener('DOMContentLoaded', function() {
		VANTA.WAVES({
			el : "#background",
			mouseControls : true,
			touchControls : true,
			gyroControls : false,
			minHeight : 200.00,
			minWidth : 200.00,
			scale : 1.00,
			scaleMobile : 1.00,
			color : 0x1d549b
		});
	});
</script>

</head>

<body>

	<div id="background" class="h-screen h-full"></div>

	<div class="container flex">
		<div class="">
			<a href="../pool/main">실내 수영</a>
		</div>
		<div class="flex-col justify-center">

			<div>
				<ul>

					<c:if test="${!rq.isLogined() }">
						<li>
							<a class="hover:underline" href="../member/login">로그인</a>
						</li>
						<li>
							<a class="hover:underline" href="../member/join">회원가입</a>
						</li>
					</c:if>
					<c:if test="${rq.isLogined() }">
						<li>
							<a class="hover:underline" href="../member/myPage">마이페이지</a>
						</li>
						<li>
							<a onclick="if(confirm('로그아웃 하시겠습니까?') == false) return false;" class="hover:underline" href="../member/doLogout">로그아웃</a>
						</li>
					</c:if>
				</ul>
			</div>

			<div>
				<a href="/">
					<img src="/resource/LOGO_black.png" alt="logo" class="h-20">
				</a>
			</div>

			<div class="">환영합니다.</div>
		</div>
		<div class="">
			<a href="../beach/main">야외 수영</a>
		</div>
	</div>

</body>

</html>
