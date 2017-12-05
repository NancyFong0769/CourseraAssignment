## Put comments here that give an overall description of what your
## functions do
#Below are two functions that are used to create a special object that stores a matrix and cache's its inverse.

## Write a short comment describing this function

#  creates a special "vector", which is really a list containing a function to
#set the value of the matrix
#get the value of the matrix
#set the value of the inverse
#get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
	i<-NULL
	set<-function(y){
		x<<-y
		i<<-NULL
	}
	get<-function() x
	setinverse<-function(inverse) i<<-inverse
	getinverse<-function() i
	list(set=set,get=get,
		setinverse=setinverse,
		getinverse=getinverse)
}


## Write a short comment describing this function
#calculates the inverse of the special "vector" created with the above function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	i<-x$getinverse()
	if(!is.null(i)){
		message("getting cached data")
		return(i)
	}
	data<-x$get()
	i<-solve(data)
	x$setinverse(i)
	i
}
