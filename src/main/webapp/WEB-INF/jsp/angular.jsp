<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!doctype html>
<html ng-app="phonecatApp">
	<head>
		<meta charset="utf-8">
		<title>Angular Sandbox</title>
		<script type="text/javascript" src="<c:url value="/javascript/angular.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/jquery-2.1.1.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/bootstrap.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/controllers.js"/>"></script>
		<link type="text/css" href="<c:url value="/stylesheets/bootstrap.css"/>" rel="stylesheet" media="screen, projection" />
	</head>
	<body ng-controller="PhoneListCtrl">
		<p>Hello, {{name}}!</p>
		<ul>
			<li ng-repeat="phone in phones">
				<span>{{phone.name}}</span>
				<p>{{phone.snippet}}</p>
			</li>
		</ul>
		<p>Total number of phones: {{phones.length}}</p>
		<table>
			<tr><th>row number</th></tr>
			<tr ng-repeat="i in [0, 1, 2, 3, 4, 5, 6, 7]"><td>{{i + 1}}</td></tr>
		</table>
		<table>
			<tr><th colspan="8">8x8 matrix</th></tr>
			<tr ng-repeat="i in [1, 2, 3, 4, 5, 6, 7, 8]"><td ng-repeat="j in [1, 2, 3, 4, 5, 6, 7, 8]">{{j}}</td></tr>
		</table>
	</body>
</html>