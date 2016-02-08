## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	## Create a matrix

	## Cache mem
	mem <- NULL
	set <- function(y) {
		x <<- y ## assign input to parent environment
		mem <<- NULL ## initialize mem in parent environment to null
		}

	get <- function() x ## retrun matrix x

	setinv <- function(inv) mem <<- inv ## set cache to inverse of mem matrix

	getinv <- function() mem ## return cached matrix
	list(set = set, get = get, setinv = setinv, getinv = getinv)

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