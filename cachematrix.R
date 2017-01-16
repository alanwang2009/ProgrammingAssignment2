## This is a R file with 2 functions- makeCacheMatrix() and cacheSolve()


## makeCacheMatrix can creat a list wit get, set,setmatrix,getmatrix 4 functions.
##set is used for set a matrix to the function
##get is used for get the matrix wich makeCacheMatrix stored
## setmatrix stored the inversed matrix.
## getmatrix get the stored inversed matrix.

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                m<<-NULL
                x<<-y
                
        }
        get<-function() x
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
        list(set=set, get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}

## calculated the inverse of matrix. the x is a matrix.
##if there is not a inverse stored in x,calculated the result. print the result and save it to x cache.
##if there is a stored result, print the result.

cacheSolve <- function(x, ...) {
        
        m<-x$getmatrix()
        
        if(!is.null(m)){
                message("getting cached data:)")
                return(m)
        }
        matrix<-x$get()
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m
        
}