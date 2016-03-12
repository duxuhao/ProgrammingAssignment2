## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this fuction use solve(inv) to calculate the inverse matrix of x
#it contains 4 different function including the set, which input the x
#as the matrix and get to show the matrix. And use getsolve function to
#calculate the inverse and getsolve to return the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) inv <<- solve
        getsolve <- function() inv
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function
#this function get the matrix into the makeCacheMatrix and solve it, and 
# call the getsolve function to solve it and getsolve to return the inverse
#matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getsolve()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setsolve(inv)
        inv
}
