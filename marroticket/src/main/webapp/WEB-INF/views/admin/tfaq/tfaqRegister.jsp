<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<script>
	$(document).ready(function() {
		
		var formObj = $("#tfaqVO");
		
		$("#btnRegister").on("click", function() {
			formObj.attr("action", "/tfaq/tfaqRegister");
			formObj.attr("method", "post");
			formObj.submit();
		});
		
		$("#btnList").on("click", function() {
			self.location = "tfaqList";
		});
	});
	$(".header_gnb_link.board_manage").css({
	    'color': '#EB0000',
	    'font-weight': 'bold'
		});
</script>

<h2>
	<spring:message code="tfaq.header.register" />
</h2>

<form:form modelAttribute="tfaqVO" action="register">
	<table>
		<tr>
			<td><spring:message code="tfaq.title" /></td>
			<td><form:input path="title" /></td>
			<td><font color="red"><form:errors path="title" /></font></td>
		</tr>

		<tr>
			<td><spring:message code="tfaq.content" /></td>
			<td><form:input path="content" /></td>
			<td><font color="red"><form:errors path="content" /></font></td>
		</tr>
	</table>
</form:form>

<div>
	<button type="submit" id="btnRegister">
		<spring:message code="action.register" />
	</button>

	<button type="submit" id="btnList">
		<spring:message code="action.list" />
	</button>
</div>



