## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

# set inv to null

inv <- NULL

# get x into function  and reset inv to null
set <- function(y) {

	x <<- y
	inv <<- NULL

}

# get the value of vector
get <- function() x

# set the value of inverse
setinverse <- function(inverse) inv <<- inverse

# get the value of inverse
getinverse <- function() inv
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
#calculate inverse using function getinverse from above

inv <- x$getinverse()

# if present non zero else get cached value
if(!is.null(inv))
{
message("getting cached data")
return(inv)

}
data <- x$get()
inv <- solve(data)
x$setinverse(inv)
inv
}
