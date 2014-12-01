<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!doctype html>
<html ng-app="phonecatApp" ng-controller="PhoneListCtrl">
	<head>
		<meta charset="utf-8">
		<title ng-bind-template="Google Phone Gallery: {{query}}">Google Phone Gallery</title>
		<script type="text/javascript" src="<c:url value="/javascript/angular.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/angular-route.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/jquery-2.1.1.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/bootstrap.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/app.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/controllers.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/filters.js"/>"></script>
		<link type="text/css" href="<c:url value="/stylesheets/bootstrap.css"/>" rel="stylesheet" media="screen, projection" />
		<link type="text/css" href="<c:url value="/stylesheets/app.css"/>" rel="stylesheet" media="screen, projection" />
	</head>
	<body>
		<ul>
			<li>{{ "lower cap string" | uppercase }}</li>
			<li>{{ {foo: "bar", baz: 23} | json }}</li>
			<li>{{ 1304375948024 | date }}</li>
			<li>{{ 1304375948024 | date:"MM/dd/yyyy @ h:mma" }}</li>
			<li><input ng-model="userInput"> Uppercased: {{ userInput | uppercase }}</li>
		</ul>
		<div ng-view></div>
	</body>
</html>