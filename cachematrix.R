## R Programming Assignment - CACHING THE INVERSE OF A MATRIX
## In the following two functions I am attempting to produce an efficient method of caching the inverse of a matrix.
## rather than compute it repeatedly.
## The functions below create a special object that stores a matrix and caches its inverse.
## The following routine was succesfful tested:
## First, the program references sources my functions file - "InverseCacheFunctionA22.R" 
## Function 1.0 - 'makeCacheMatrix' sets the value of the matrix, retrieves the matrix, sets the value of inverse
## of the matrix (see nested functions).
## Function 1.0
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
                set <- function(y) {
                        x <<- y
                        inv <<- NULL
}
        get <- function() x
                setInverse <- function(inverse) inv <<- inverse
                getInverse <- function() inv
                        list(set = set,
                        get = get,
                        setInverse = setInverse,
                        getInverse = getInverse)
}
## Function 2.0 Returns the inverse of the matrix. 
## It asks if the inverse has already been computed. If so, the result is returned.
## If not, the inverse is computed and the value placed in cache. 
## Assupmtion: the matrix is always invertible.
## Function 2.0
cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
                if (!is.null(inv)) {
                        message("getting cached data")
                        return(inv)
}
        mat <- x$get()
               inv <- solve(mat, ...)
                x$setInverse(inv)
                inv
}
## End of Assignment.

