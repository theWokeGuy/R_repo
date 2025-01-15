#Creating vectors with the concatenate function 
codes <- c(380,124,818)
country <- c("Italy","Canada","Egypt")

#Naming the elements of a numeric vector 
codes <- c(Italy=380, Canada=124, Egypt=818)
codes

codes <- c("Italy"=380, "Canada"=124, "Egypt"=818)
codes

class(codes)

#Naming elements in a vector using the names function
codes <- c(380,124,818)
country <- c("Italy","Canada","Egpyt")
names(codes) <- country

codes

#Using seq function to create vectors

#generating a sequence from 1 to 10
seq(1,10)

#Generation of odd numbers from 1to 10
seq(1,10,2)

#Generation of even numbers from 1 to 10
seq(2,10,2)

#subsetting 
codes[2]

codes[c(1,3,2)]

codes[c(1,3)]

codes[1:2]

codes["Canada"]

codes[c("Egpyt","Italy")]
