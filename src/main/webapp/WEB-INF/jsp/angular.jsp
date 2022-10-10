<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html ng-app="phonecatApp" ng-controller="PhoneListCtrl">
	<head>
		<meta charset="utf-8">
		<title ng-bind-template="Google Phone Gallery: {{query}}">Google Phone Gallery</title>
		<script type="text/javascript" src="<c:url value="/javascript/jquery-1.12.4.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/angular.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/angular-route.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/angular-resource.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/angular-animate.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/bootstrap.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/app.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/controllers.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/filters.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/services.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/animations.js"/>"></script>
		<link type="text/css" href="<c:url value="/stylesheets/app.css"/>" rel="stylesheet" media="screen, projection" />
		<link type="text/css" href="<c:url value="/stylesheets/animations.css"/>" rel="stylesheet" media="screen, projection" />
		<link type="text/css" href="<c:url value="/stylesheets/bootstrap.css"/>" rel="stylesheet" media="screen, projection" />
	</head>
	<body>
		<div class="view-container">
			<div ng-view class="view-frame"></div>
		</div>
	</body>
</html>