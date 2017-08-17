<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Minutes</title>

<script type="text/javascript" src="jquery-3.2.1.min.js"></script>

<script type="text/javascript">
	$(document).ready(
		function() {
			$.getJSON('<spring:url value="activities.json"/>', {
				ajax : 'true'
			}, function(data){
				var html = '<option value="">--Please select one--</option>';
				var len = data.length;
				for(var i=0; i<len; i++) {
					html += '<option value="' + data[i].desc + '" >' + data[i].desc + '</option>';
				}
				html += '</option>';
				
				$('#activities').html(html); 
			});
		});
</script>

<style>
	.error {
		color: #ff0000;
	}
	
	.errorBlock {
		color: #000;
		background-color: #ffeeee;
		border: 3px solid #ff0000;
		padding: 8px;
		margin: 16px;
	}
</style>

</head>
<body>
	<h1>Add Minutes Exercised</h1>
	
	Language : <a href="?language=en">English</a> | <a href="?language=es">Spanish</a>
	
	<form:form commandName="exercise">
		<form:errors path="*" cssClass="errorBlock" element="div" />
		<table>
			<tr>
				<td><spring:message code="goal.text" /></td>
				<td><form:input path="minutes"/></td>
				<td>
					<form:select id="activities" path="activity"></form:select>
				</td>
				<td><form:errors path="minutes" cssClass="error"/></td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="submit" value="Enter Exercise"/>
				</td>
			</tr>
		</table>
	</form:form>
	
	<h1>Exercise goal for the day is: ${goal.minutes}</h1>
	<h2>Exercised minutes today: ${exercise.minutes}</h2>
</body>
</html>