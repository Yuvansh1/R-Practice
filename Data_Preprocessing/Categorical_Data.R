"In Data.csv we have 4 columns(Country, Age, Salary, Purchased) 
  where Country Column has 3 categories:- France, Germany & Spain
  & Purchased COlumn has 2 categories (Yes/No). Country & Purchased
  columns are Categorical Variable"

#Importing the Dataset
dataset = read.csv('Data.csv')
View(dataset)

#Encoding Categorical Data

#Encode Counrty COlumn Categories with 1,2,3

dataset$Country = factor(dataset$Country,
                         levels = c('France', 'Spain', 'Germany'),
                         labels = c(1, 2, 3))

#This will change France, Germany & Spain to 1,2,3

#Encode Purchased Column Categories to 1,2

dataset$Purchased = factor(dataset$Purchased,
                         levels = c('Yes', 'No'),
                         labels = c(0,1))

#This will change Yes,No to 1,0

