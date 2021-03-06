## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
    set<-function(y){
    x<<-y
    m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

cacheSolve <- function(x=matrix()) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix)
    x$setmatrix(m)
    m
}
#test:
A<-matrix(data = c(1,2,3,4), nrow = 2, ncol = 2)
B<-makeCacheMatrix(A)
cacheSolve(B)
#     [,1] [,2]
#[1,]   -2  1.5
#[2,]    1 -0.5