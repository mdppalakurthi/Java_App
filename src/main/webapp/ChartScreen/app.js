var app = angular.module("myApp", ["ng-fusioncharts","ngResource"]);

app.controller("MyController", [ '$scope', '$resource',
	function($scope, $resource) {
		//
		// GET Action Method
		//
		var User = $resource('http://localhost:8080/controller/rest/service/getAllUsersByJSON');
		User.query(function(profiles){
			$scope.profiles = profiles;
			
		});
		
		var Userb = $resource('http://localhost:8080/controller/rest/service/getAllUserSubByJSON');
		Userb.query(function(profilesb){
			$scope.profilesb = profilesb;
			
		});
		
		
		$scope.mm='sdsd';
		/*$scope.myDataSource = {
		        chart: {
		            caption: "Statistics of Consultants",
		            subCaption: "Total Requirements of Consultants",
		        },
		        data: [{"label":"manideep","value":19542},{"label":"Lokesh","value":0},{"label":"sandeep","value":0},{"label":"Gurumurthy","value":9},{"label":"Vijay ","value":20}] 
		    };*/
} 



]);

/*

app.controller('MyController', function ($scope,$http) {

	
	 $http.get("http://localhost:8080/controller/rest/service/getAllUsersByJSON").
     then(function(response) { 
         $scope.graphdata = response.data;

     });
	 
	 $scope.tt = [{"label":"manideep","value":1921},{"label":"Lokesh","value":0},{"label":"sandeep","value":0},{"label":"Gurumurthy","value":9},{"label":"Vijay ","value":20}];
	 $scope.agd ;
	 
	 $scope.myDataSource = {
	 	        chart: {
	 	            caption: "Statistics of Consultants",
	 	            subCaption: "Total Requirements of Consultants",
	 	        },
	 	        data: $scope.graphdata 
	 	    };
	 
	 
});*/