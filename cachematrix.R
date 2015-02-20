## Put comments here that give an overall description of what your
## functions do


## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(matrix = matrix()) {
    inverse <- NULL
    set <- function(x) {
        matrix <<- x
        inverse <<- NULL
    }
    get <- function() matrix
    setinverse <- function(newInverse) inverse <<- newInverse
    getinverse <- function() inverse
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## This function computes the inverse of the special "matrix" returned by
## makeCacheMatrix above. If the inverse has already been calculated (and
## the matrix has not changed), then the cachesolve should retrieve the
## inverse from the cache.

cacheSolve <- function(x, ...) {
    inverse <- x$getinverse()
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    data <- x$get()
    inverse <- solve(data)
    x$setinverse(inverse)
    inverse
}
