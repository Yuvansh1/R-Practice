#Splitting the dataset into the Training set and Test set


#Ist Step is to install & import caTools library

#install.packages('caTools')

library(caTools)

#We use sample.split to split test and training set
set.seed(9876)
#Set.seed will always 
split = sample.split(dataset$Purchased, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)
training_set
test_set
