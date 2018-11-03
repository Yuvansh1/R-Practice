#Importing the Dataset
dataset = read.csv('Data.csv')
View(dataset)

#Taking Care of  Missing Data

#We would replace missing cell in Age Coumn with mean of Age Column Data

#Syntax of ifelse() is ifelse(condition,if True Output,else output)

custommean <- function(x)
{mean(x, na.rm = TRUE)}

dataset$Age =  ifelse(is.na(dataset$Age),
                      ave(dataset$Age, FUN = custommean),
                      dataset$Age)

#We would replace missing cell in Salary Coumn with mean of Salary Column Data

dataset$Salary =  ifelse(is.na(dataset$Salary),
                      ave(dataset$Salary, FUN = custommean),
                      dataset$Salary)
                      
#Here is.NA(NA is function) tells us if the value of the function is missing or not

#Dollar Sign($) is used to check all the values in Age Column is missing or not

#If the condition is True that means value is missing

#ave is average