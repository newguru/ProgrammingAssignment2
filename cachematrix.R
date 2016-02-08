## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	mem <- x$getinv()
	## check if inverse is calculated and is in cahce
	if (!is.null(mem)) {
		message("retreive cached matrix")
		return(mem)
	}

	# calculate the inverse if above is false
	dat <- x$get() 
	mem <- solve(dat, ...)

	x$setinv(mem) # set value of inverse in cache
	mem # return the value mem
}