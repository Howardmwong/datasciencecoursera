## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will create a cache matrix
	makeCacheMatrix <- function(x = matrix()) {
		inverse_matrix <- NULL
		set <- function(y) {
			x <<- y
			inverse_matrix <<- NULL
}
		get <- function() x
		set_inverse <- function(inverse) inverse_matrix <<- inverse
		get_inverse <- function() inverse_matrix
		list(set=set, get=get, set_inverse=set_inverse, get_inverse=get_inverse)
}
## Write a short comment describing this function
## This function will compute the inverse of the cache matrix
	cacheSolve <- function(x, ...) {
		inverse_matrix <- x$get_inverse()
		if(!is.null(inverse_matrix)){
			messsage("Getting Cached Data.")
			return(inverse_matrix)
}
		data <- x$get()
		inverse_matrix <- solve(data)
		x$set_inverse(inverse_matrix)		
        ## Return a matrix that is the inverse of 'x'
		inv
}
