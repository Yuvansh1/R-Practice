#R & Python has dynamic type data type
#Vector is homogenous single dimension data stucture 
#which can be written in c(), here c donates combine.

#class should be same in one vector

#Right : vec1 = c(1,2,3) or vec1 = c('d','e','f')

#Wrong : vec1 = c(1,2,'d',3,'e',T,F)

#In vector in R, index start from 1


#List is heterogenous single dimension data stucture

#we can write multiple class datatype in list
#which can be written in list()

#list1 <- list(1, "a", TRUE)


#In list in R, index start from 1


#matrix is homogenous two dimension data stucture, it has rows and columns
#which can be written in matrix() and c()

#matrix1 <- matrix(c(1,2,3,4,5,6))

#Above matrix1 gives us this output:

#Output:
  
#1
#2
#3
#4
#5
#6

#matrix(c(1,2,3,4,5,6), nrow=2, ncol=3)

#Output:
#            [,1]   [,2]   [,3]
#[1,]          1      3      5
#[2,]          2      4      6

#array is homogenous multi dimensional data stucture

For ex:
  
vec1 <- c(1,2,3,4,5,6)
vec2 <- c(7,8,9,10,11,12)

array1 <- array(c(vec1, vec2), dim = c(2,3,2))

where in (2,3,2), first 2 is defining number of rows
3 is representing number of dimensions
and last 2 is defining number of dimensions (two dimensional or three dimensional)

