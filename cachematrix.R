## The goal of this assignment is to use two functions one to create and chache a 
## special matric object and cache it's inverse and the other to retrieve the chached 
## inverse.

##assign matrix to p
p <- matrix()


##This function creates the set up to invert and cache any square matrix
makeCacheMatrix <- function(x = matrix()){
     #sets a null inverse matrix 
     my.matrix.inv <<- NULL

     #caches the input matrix x
     mymatrix <<- x 

     #this assigns f1 our input matrix x
     f1 <- function() mymatrix

     #returning a list that will give us our matrix
     return(list(get.mymatrix=f1))
}

## running makeCacheMartrix using the square matriz assigned to p to get everything set up
h <- makeVector(p)


## this function computes the invserse of the matrix used in makeCacheMatrix using the 
## functions created there and then caches the inverse matrix


cacheSolve <-function(a,...){
      ## we only want to invert the matrix if it is missing so this checks for that
      if (is.null(my.matrix.inv)){

      ## chaching out the inverse so it is there for use later
      my.matrix.inv<<- solve(a$get.mymatrix()) 
                } 
                
      ## returns the inverse
      return(my.matrix.inv)
}

cacheSolve(h)
