<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!doctype html>
<html lang="en" ng-app>
	<head>
		<meta charset="utf-8">
		<title>Angular Sandbox</title>
		<script type="text/javascript" src="<c:url value="/javascript/angular.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/jquery-2.1.1.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/bootstrap.js"/>"></script>
		<link type="text/css" href="<c:url value="/stylesheets/bootstrap.css"/>" rel="stylesheet" media="screen, projection" />
	</head>
	<body>
		<ul>
			<li>
				<span>Nexus S</span>
				<p>Fast just got faster with Nexus S.</p>
			</li>
			<li>
				<span>Motorola XOOM™ with Wi-Fi</span>
				<p>The Next, Next Generation tablet.</p>
			</li>
		</ul>
		<p>Total number of phones: 2</p>
	</body>
</html>