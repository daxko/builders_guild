

function BooksController($scope, $http) {
    $http.get("/books").success(function(data) {
        $scope.books = data;
    });
    $scope.add_book = function(book) {
        var new_book = angular.copy(book);
        $scope.books.push(new_book);
        $http.post("/books", new_book);
    }
}