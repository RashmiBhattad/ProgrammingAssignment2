makeCacheMatrix <- function(x,...){

	x <- matrix(1:9, nrow = 3, ncol = 3)

	s <- null
	 
	set <- funtion(y){
		x <<- y
		s <<- null
	}
	get <- function()x
	
		setmean <- function(mean)m <- mean
		getmean <- function()m

		list(set = set, get=get, setmean = setmean, getmean = getmean)

}

cacheSolve <- function(makeCacheMatrix, ...){

	cachemean <- function(x, ...) {
      
	y <- solve(x)

	if(x=y)
	{
		message("getting cached data")
            return(x)
      }
		
       data <- x$get()
       s <- mean(data, ...)
       x$setmean(s)
       s
}

