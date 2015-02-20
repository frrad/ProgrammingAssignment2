#!/usr/bin/Rscript

data = list(
    matrix( c(1,2,3,4), ncol = 2, nrow = 2),
    matrix( c(0,2,3,4,5,6,7,8,9), ncol = 3, nrow = 3),
    matrix( c(0,2,3,4,0,6,7,8,9,-1,11,12,13,14,15,16), ncol = 4, nrow = 4)
)

source("cachematrix.R")

for (datum in data) {
    print("====================")
    print("matrix:")
    print(datum)
    print("inverse:")
    print(solve(datum))

    testMatrix <- makeCacheMatrix(datum)
    print("invert once:")
    print(cacheSolve(testMatrix))
    print("invert twice:")
    print(cacheSolve(testMatrix))
    ## print("invert thrice:")
    ## cacheSolve(testMatrix)
}
