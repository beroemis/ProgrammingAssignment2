## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function takes in a matrix as data and stores it. 

makeCacheMatrix <- function(x = matrix()) {
        matr <- NULL
        
        set <- function(x, inv){
                matr <<- x
                inverse_matrix <<- inv
        }
        get <- function() x
        getMatrix <- function() matr
        getInverse <- function() inverse_matrix
        list(set = set, get = get, getMatrix = getMatrix, 
             getInverse = getInverse)

}


## Write a short comment describing this function
## This function takes a matrix as input and checks if its already stored.
## If the matrix is already stored it returns the cached matrix. If it wasn't
## stored it computes the inverse matrix and returns the new matrix

cacheSolve <- function(x, ...) {
        
        matr <- x$getMatrix()
        
        if(!is.null(matr)){
                message("Cached Data!")
                return(x$getInverse())
        }
        else{
                message("New Data!")
                data <- x$get()
                inv <- solve(data, ...)
                x$set(data, inv)
        }
        inv
        
}
