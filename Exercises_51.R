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
l = list()
for (i in 1:5) l[[i]] <- c(i, 1:4)
result = do.call(rbind, l)
result


# Task 8: Write a R program to convert a given matrix to a list of column-vectors.
x = matrix(1:12, ncol=3)
l =  split(x, rep(1:ncol(x), each = nrow(x)))
l

# Task 9: Write a R program to find row and column index of maximum and minimum value in a given matrix.
m = matrix(c(1:16), nrow = 4, byrow = TRUE)
m
result = which(m == max(m), arr.ind=TRUE)
result

result = which(m == min(m), arr.ind = T)
result

# Task 10: Write a R program to rotate a given matrix 90 degree clockwise rotation.
x <-  matrix(1:9, nrow = 3)
x
rotate <- t(apply(x, 2, rev))
rotate
r <- t(x)
r

# Task 11: Write a R program to concatenate two given matrices of same column but different rows.
x1 <-matrix(data = 1:9, nrow = 3, ncol = 3, dimnames = list(c("r1", "r2", "r3"), c("c1", "c2", "c3") ))
x2 <-matrix(data = c(10:18), nrow = 3, ncol = 3, dimnames = list(c("r1", "r2", "r3"), c("c1", "c2", "c3") ))
e <- rbind(x1,x2)
e


# Task 12: Write a R program to convert a given matrix to a 1 dimensional array.
as.vector(x1)

# Task 13: Write a R program to create an 3 dimensional array of 24 elements using the dim() function.
x =  sample(1:5,24,replace = TRUE)
x
dim(x) <- c(3,2,4)
x

# Task 14: Write a R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from two given two vectors. Print the second row of the second matrix of the array and the element in the 3rd row and 3rd column of the 1st matrix.
v1 = c(1:4)
v2 = c(2:10)
v1
result <- array(c(v1,v2), dim = c(3,3,2))
result


result[2,,2]

result[3,3,1]

# Task 15: Write a R program to create an array using four given columns, three given rows, and two given tables and display the content of the array..
array1 <- array(1:50, dim = c(3,4,2))
array1


# Task 16: Write a R program to create a two-dimensional 5x3 array of sequence of even integers greater than 50.
array1 <- array(seq(from = 50, length.out = 15,  by = 2), c(5,3))
array1

# Task 17: Write a R program to create an empty data frame.

df = data.frame()
str(df)


# Task 18: Write a R program to create a data frame from four given vectors.

names <- c("Anna", "Manu", "Pandan", "Desy", "Aziz")
gender <- c("F", "M", "F", "F", "M")
height <- c(167, 189, 165, 159, 162)
weight <- c(46, 76, 60, 42, 50)
df <- data.frame(names, gender, height, weight)
df


# Task 19: Write a R program to get the structure of a given data frame.
str(df)


# Task 20: Write a R program to get the statistical summary and nature of the data of a given data frame. 
summary(df)


# Task 21: Write a R program to extract 3rd and 5th rows with 1st and 3rd columns from a given data frame.
df[c(3,5),c(1,3)]

# Task 22: Write a R program to add a new column in a given data frame.

country <- c("Poland", "Swiss", "Indonesia", "France", "UAE")
df <- df$country
df


# Task 23: Write a R program to drop column(s) by name from a given data frame.

df1 <- subset(df, select = -c(weight, height))
df1

# Task 24: Write a R program to sort a given data frame by multiple column(s).
df2 <- df[with(df, order(height, weight)),]
df2


# Task 25: Write a R program to create inner, outer, left, right join(merge) from given two data frames.

df1 = data.frame(numid = c(12, 14, 10, 11))
df2 = data.frame(numid = c(13, 15, 11, 12))
print("Left outer Join:")
result = merge(df1, df2, by = "numid", all.x = TRUE)
print(result)
print("Right outer Join:")
result = merge(df1, df2, by = "numid", all.y = TRUE)
print(result)
print("Outer Join:")
result = merge(df1, df2, by = "numid", all = TRUE)
print(result)
print("Cross Join:")
result = merge(df1, df2, by = NULL)
print(result)


# Task 26: Write a R program to replace NA values with 3 in a given data frame.
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
exam_data[is.na(exam_data)] = 3
print("After removing NA with 3, the said dataframe becomes:")
print(exam_data)



# Task 27: Write a R program to compare two data frames to find the elements in first data frame that are not present in second data frame.

df_90 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 14, 15)
)
df_91 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 15, 18)
)
print("Original Dataframes:")
print(df_90)
print(df_91)
print("Row(s) in first data frame that are not present in second data frame:")
print(setdiff(df_90,df_91))
# Task 28: Write a R program to count the number of NA values in a data frame column.
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
print("The number of NA values in attempts column:")
print(sum(is.na(exam_data$attempts)))

