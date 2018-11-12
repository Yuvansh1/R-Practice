#Feature Scaling

# We can't perform scaling on Country & Purchased Column because In Both Column 
# we use Categorical number & Boolean
# (Using Categorical, we replace text with numbers)

#In dataset table, we have 4 columns(Country, Age, Salary, Purchased)

#[, 2:3] means Age, Salary column


training_set[, 2:3] = scale(training_set[, 2:3])
test_set[, 2:3] = scale(test_set[, 2:3])




