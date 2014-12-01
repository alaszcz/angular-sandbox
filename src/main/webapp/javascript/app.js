'use strict';

/* App Module */

var phonecatApp = angular.module('phonecatApp', [ 'ngRoute', 'phonecatControllers', 'phonecatFilters', 'phonecatServices' ]);

phonecatApp.config([ '$routeProvider', function($routeProvider) {
	$routeProvider.when('/phones', {
		templateUrl : 'phoneList',
		controller : 'PhoneListCtrl'
	}).when('/phones/:phoneId', {
		templateUrl : 'phoneDetails',
		controller : 'PhoneDetailCtrl'
	}).otherwise({
		redirectTo : '/phones'
	});
} ]);