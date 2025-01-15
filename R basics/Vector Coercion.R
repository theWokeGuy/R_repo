x <- c(1,"canada",3)
x
class(x)

#Forced character coercion
x <- 1:5
y <- as.character(x)
y

#Forced numeric coercion
as.numeric(y)
y

#Missing Data (NA)
a <- c("1","b","3")
as.numeric(a)
