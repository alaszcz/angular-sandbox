<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!doctype html>
<html ng-app="phonecatApp" ng-controller="PhoneListCtrl">
	<head>
		<meta charset="utf-8">
		<title ng-bind-template="Google Phone Gallery: {{query}}">Google Phone Gallery</title>
		<script type="text/javascript" src="<c:url value="/javascript/angular.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/jquery-2.1.1.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/bootstrap.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/javascript/controllers.js"/>"></script>
		<link type="text/css" href="<c:url value="/stylesheets/bootstrap.css"/>" rel="stylesheet" media="screen, projection" />
	</head>
	<body>
		<div class="container-fluid">
			<p>Hello, {{name}}!</p>
			<div class="row">
				<div class="col-md-2">
					<!--Sidebar content-->
					Search: <input ng-model="query">
				</div>
				<div class="col-md-10">
					<!--Body content-->
					<ul class="phones">
						<li ng-repeat="phone in phones | filter:query">{{phone.name}}
							<p>{{phone.snippet}}</p>
						</li>
					</ul>
				</div>
			</div>
			<p>Your search query: {{query}}</p>
			<p>Total number of phones: {{phones.length}}</p>
		</div>
	</body>
</html>