## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ##Cache the required value - Initially set to NULL
    cachedMatrix <- NULL 
    
    setMatrix <- function(matrix){
      ## Store the new matrix
      x <<- matrix
      ##Remove the cached matrix if any, after storing the new matrix
      cachedMatrix <<- NULL 
    }
    
    ## Getter that returns the matrix
    getMatrix <- function() x
    
    ##Function to cache the inverse
    cacheInverseMatrix <- function(inverse){
      cachedMatrix <<- inverse
    }
    
    ##Getter to return the cached inverse
    getCachedInverseMatrix <- function(){
      cachedMatrix
    }
    
    ##Return a list with all the setters and getters
    list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverseMatrix = cacheInverseMatrix, getCachedInverseMatrix = getCachedInverseMatrix )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inverseMatrix <- x$getCachedInverseMatrix()
    
    ##If the inverseMatrix is not null, return the value
    if(!is.null(inverseMatrix)){
      return(inverse)
    }
    
    ##If it is null, Calculate the inverse and cache it
    matrix <- x$getMatrix()
    inverseMatrix <- solve(matrix, ...)
    x$cacheInverseMatrix(inverseMatrix)
    
    ##Return the inverse matrix
    inverseMatrix
}
