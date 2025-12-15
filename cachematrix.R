## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL  ## created the inverse to store the matrix but as it is Null, so nothing is being stored here.
        set function(y){
          x <<- y ## Replaces old matrix with the new one.
          inv <<- NULL  
        }
        get <- function{
                x
        }
        setinverse <- function(inverse){
                inv <<- inverse
        }
        getinverse <- function{
                inv
        }
        list( set = set,         ## Created the list to get of all of them together.
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {    ## this takes x and extra options also that is why used ...
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()      ## getting the inverse
        if(!is.null(inv){          ## checking if inverse is there or not.
                message("getting cached inverse")
                return(inv)
        }
           data <- x$get()
           inv <- solve(data, ...)    ## Calculating inverse
           x$setinverse(inv)           ## Store inverse in cache for next time
           inv
}
