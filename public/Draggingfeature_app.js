//=require turbolinks
var App = angular.module('drag-and-drop', ['ngDragDrop', 'ui.bootstrap']);
var counter=0;

App.controller('oneCtrl', function($scope, $q) {
  $scope.list1 = {title: 'Drag nd Drop with default confirmation'};
  $scope.list2 = {};
  $scope.beforeDrop = function() {
    var deferred = $q.defer();
    if (confirm('Are you sure???')) {
      deferred.resolve();
    } else {
      deferred.reject();
    }
    return deferred.promise;
  };
  $scope.onDrag = function () {

  }
});




App.controller('twoCtrl', function($scope, $q, $modal) {





$scope.dog_count=0;
            $scope.list1 = [
              { 'link': 'http://cdn.akc.org/akcdoglovers/GreatPyrenees_hero.jpg', 'dog_name': 'Steve' },
              { 'link': 'https://s-media-cache-ak0.pinimg.com/236x/f7/11/5c/f7115c51f12aceda8f17b612b3ee81a7.jpg', 'dog_name': 'Dogsy' },
              { 'link': 'http://gottalovealab.com/images/yellow-lab-names.jpg', 'dog_name': 'Bingolingo' },
              { 'link': 'https://s-media-cache-ak0.pinimg.com/236x/8a/4e/c4/8a4ec459dccadb9ed7eb858de4cd72fe.jpg', 'dog_name': 'Hercules' },
              { 'link': 'http://www.rantlifestyle.com/wp-content/uploads/2014/08/No.-20-wallcoo.net_1.jpg', 'dog_name': 'Skip' },
              { 'link': 'https://s-media-cache-ak0.pinimg.com/originals/ca/9e/25/ca9e254ad0829af9438ea2e040914d31.jpg', 'dog_name': 'Bingo' }
           ];

  $scope.onDrop = function () {
    console.log("Sanity Check");
$scope.dog_count=$scope.dog_count+1;
  console.log($scope.dog_count);
  

  }
  $scope.beforeDrop = function() {
    var modalInstance = $modal.open({
      templateUrl: 'myModalContent.html',
      controller: 'ModalInstanceCtrl'
    });

    return modalInstance.result;
  };
}).controller('ModalInstanceCtrl', function ($scope, $modalInstance) {
  $scope.ok = function () {
    $modalInstance.close();
  };
  $scope.cancel = function () {
    $modalInstance.dismiss('cancel');
  };
});
