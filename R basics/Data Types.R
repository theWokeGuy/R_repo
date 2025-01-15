#Type of object
a <- 1
class(a)

class(ls)

#Data Frames 
library(dslabs)
data(murders)

class(murders)

str(murders)

head(murders)

#accessing data within a data frame
murders$population # this is a vector

#Getting names of the columns in a Data Frame(alt)
names(murders)

#getting the length 
pop <- murders$population
length(pop)

class(pop)

#Character Vectors
'a'
class(murders$state)

#logical Vector
z <- 3 == 2
z

#Factors
class(murders$region)

levels(murders$region)
