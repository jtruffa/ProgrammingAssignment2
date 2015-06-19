## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    temp <- NULL
    
    set <-function(y) {
        x <<- y
        temp <<- NULL
    }
    
    get <-function() x
    
    guardainversa <- function(matriz) {
        temp <<- matriz
    }
    inversa <- function() temp
    
    list(set = set, get = get, guardainversa = guardainveresa, inversa = inversa)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        calcinversa <-x$inversa()
        if(!is.null(calcinversa)) {
            message("Getting cached data")
            return(calcinversa)
        }
        
        valor <- x$get()
        calcinversa <- solve(valor)
        x$guardainversa(calcinversa)
        calcinversa
}
