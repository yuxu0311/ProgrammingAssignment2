
# create a matrix which used for cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  
       # an empty inverse   
      i <- NULL
      #set a matrix
      set <- function(matrix){
            m <<- matrix
            i <<- NULL
      }
      get <- function() {
        m
      }
      # for inverse the matrix
      setInverse <- function(inverse){
        i <<- inverse
      }
      getInverse <- function() {
        i
      }
      #return a list
      list(set = set, get = get, setInverse = setInverse, 
           getInverse = getInverse)
}

# cache or computing
cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  
  if(!is.null(m)) {
    message("get chached data")
    return(m)
  }
  
  data <- x$get()
  m <- solve(data) %*% data
  x$setInverse(m)
  m
}
  
  )
    
  }
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
