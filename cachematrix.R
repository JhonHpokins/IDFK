## Put comments here that give an overall description of what your
## functions do

## I don't know what is this either. Inadequate information from this "professor". 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## I don't know what is this either. Inadequate information from this "professor". 
## Trust me I'm right. 

cacheSolve <- function(x, ...) {
  m <- x$getSolve()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m<-Inverse(data,...)
  x$setInverse(m)
  m
}
