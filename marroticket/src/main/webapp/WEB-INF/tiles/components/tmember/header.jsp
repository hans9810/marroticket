<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="header_util_inner">
	<div class="header_util_left"></div>
	<div class="header_util_right">
		<ul class="header_util_list">
			<!-- 로그인을 한(인증된 사용자인) 경우 -->
			<sec:authorize access="hasRole('ROLE_TMEMBER')">
				<li class="header_util_item"><a class="header_util_link"><sec:authentication
							property="principal.tname" /></a></li>
				<li class="header_util_item"><a class="header_util_link"
					onclick="document.getElementById('logout').submit();" style="cursor : pointer">로그아웃</a></li>
			</sec:authorize>
		</ul>
	</div>
</div>
<form id="logout" action="/memberlogout" method="POST">
	<input name="${_csrf.parameterName}" type="hidden"
		value="${_csrf.token}" />
</form>