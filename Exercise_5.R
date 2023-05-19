# In all below tasks create your own toy objects i.e. named vectors, non-empty vectors and lists etc.
# 
# Task 1: Write a R program to create a blank matrix.
x <- matrix(NA, nrow = 3, ncol = 3)
x

# Task 2: Write a R program to create a matrix taking a given vector of numbers as input. Display the matrix.
x <-matrix(data = 1:9, nrow = 3, ncol = 3, dimnames = list(c("r1", "r2", "r3"), c("c1", "c2", "c3") ))
x
# Task 3: Write a R program to create a matrix taking a given vector of numbers as input and define the column and row names. Display the matrix.
x <-matrix(data = 1:9, nrow = 3, ncol = 3, dimnames = list(c("r1", "r2", "r3"), c("c1", "c2", "c3") ))
x

# Task 4: Write a R program to access the element at 3rd column and 2nd row, only the 3rd row and only the 4th column of a given matrix.
x[2,3]
x[3,]
x[,3]

# Task 5: Write a R program to create two 2x3 matrix and add, subtract, multiply and divide the matrixes.

x1 <- matrix(c(3,5,7,5,9,6), nrow = 2)
x1

x2 <- matrix(c(3,7,1,8,6,8), nrow = 2)
x2

result <- x1+x1
result

result <- x1-x2
result

result <- x1*x2
result

result <- x1/x2
result

# Task 6: Write a R program to create a matrix from a list of given vectors.



# Task 8: Write a R program to convert a given matrix to a list of column-vectors.
# Task 9: Write a R program to find row and column index of maximum and minimum value in a given matrix.
# Task 10: Write a R program to rotate a given matrix 90 degree clockwise rotation.
# Task 11: Write a R program to concatenate two given matrices of same column but different rows.
# Task 12: Write a R program to convert a given matrix to a 1 dimensional array.
# Task 13: Write a R program to create an 3 dimensional array of 24 elements using the dim() function.
# Task 14: Write a R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from two given two vectors. Print the second row of the second matrix of the array and the element in the 3rd row and 3rd column of the 1st matrix.
# Task 15: Write a R program to create an array using four given columns, three given rows, and two given tables and display the content of the array..
# Task 16: Write a R program to create a two-dimensional 5x3 array of sequence of even integers greater than 50.
# Task 17: Write a R program to create an empty data frame.
# Task 18: Write a R program to create a data frame from four given vectors.
# Task 19: Write a R program to get the structure of a given data frame.
# Task 20: Write a R program to get the statistical summary and nature of the data of a given data frame. 
# Task 21: Write a R program to extract 3rd and 5th rows with 1st and 3rd columns from a given data frame.
# Task 22: Write a R program to add a new column in a given data frame.
# Task 23: Write a R program to drop column(s) by name from a given data frame.
# Task 24: Write a R program to sort a given data frame by multiple column(s).
# Task 25: Write a R program to create inner, outer, left, right join(merge) from given two data frames.
# Task 26: Write a R program to replace NA values with 3 in a given data frame.
# Task 27: Write a R program to compare two data frames to find the elements in first data frame that are not present in second data frame.
# Task 28: Write a R program to count the number of NA values in a data frame column.