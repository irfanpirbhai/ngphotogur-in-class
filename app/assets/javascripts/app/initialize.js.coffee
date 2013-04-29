@photogur = angular.module('photogur', [])

@photogur.config(($routeProvider, $locationProvider) =>

  # enable HTML5 history support (so that you can use a url like this
  # http://localhost:3000/pictures/new
  # instead of this
  # http://localhost:3000/#/pictures/new

  $locationProvider.html5Mode(true)

  $routeProvider
  .when("/", {templateUrl: "pictures/index", controller: "PicturesController"})
  .when("pictures", {templateUrl: "pictures/index", controller: "PicturesController"})
  .when("pictures/:id", {templateUrl: "pictures/show", controller: "PicturesController"})
  .when("pictures/:id/edit", {templateUrl: "pictures/edit", controller: "PictureController"})
  .when("pictures/new", {templateUrl: "pictures/edit", controller: "PicturesController"})
  .otherwise({template: "Page not found by Angular."})
)

#equivalent of window.photogur.config(function($routeProvider, $locationProvider){
#});