## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
<<<<<<< HEAD
  ##Creates the set function 
=======
>>>>>>> d3af1cbdfe308750ae133d255cff3fa220d50166
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
<<<<<<< HEAD
  ##Creates the get function
  get <- function() x
  ##Creates the setsolve function
  setsolve <- function(solve) m <<- solve
  ##Creates the getsolve function
  getsolve <- function() m
  ##assign parameters to functions
=======
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
>>>>>>> d3af1cbdfe308750ae133d255cff3fa220d50166
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by
## makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve 
## the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
