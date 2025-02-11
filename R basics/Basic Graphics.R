library(datasets)
head(iris)

## Using the plot function 
?plot

plot(iris$Species) #plot for categorical value

plot(iris$Petal.Length) #plot for quantitative variable

plot(iris$Species, iris$Petal.Width) #plot for a categorical value and a quantitative value

plot(iris$Petal.Length, iris$Petal.Width) #plot for a quantitative pair 

plot(iris) #plot for entire data frame


#Plot with options
plot(iris$Petal.Length,iris$Sepal.Width,
     col="#cc0000", #color 
     pch = 19, #use solid circles for points
     main ="Iris: Petal lenght vs. Petal Width",
     xlab ="Petal Lenght",
     ylab = "Petal Width"
)
 

#Plot formulas

plot(cos,0,2*pi)
plot(exp,1,5)
plot(dnorm, -3, +3)

#Plot Formulas with options 
plot(dnorm, -3, +3,
     col="#cc0000",
     lwd=5, #line width 
     main ="Standard Normal Distribution",
     xlab = "z-scores",
     ylab = "density")


### Bar Chart 
?mtcars
head(mtcars)

cylinders <- table(mtcars$cyl)
barplot(cylinders)  #barplot
plot(cylinders) #Default X-Y plot (line chart)

### Histogram
#Best for quantitative variables (scaled/measured/interval/ratio level)

#using the iris data frame 

hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

#Histogram by groups

#Put graphs in 3 rows and 1 column
par(mfrow=c(3,1))

#Histograms for each species using options 
hist(iris$Petal.Width[iris$Species == "setosa"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal width For Sestosa",
     xlab = "",
     col = "red")
 
hist(iris$Petal.Width[iris$Species == "versicolor"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal width For Versicolor",
     xlab = "",
     col = "purple")

hist(iris$Petal.Width[iris$Species == "virginica"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal width For Virginica",
     xlab = "",
     col = "blue")

#Restore graphical parameter
par(mfrow = c(1,1))



###Scatter Plots
##Used to visualize the association between two quantitative variables 

#Check for univariate distributions 
hist(mtcars$wt)
hist(mtcars$mpg)

#Basic X-Y plot for two quantitative variables 
plot(mtcars$wt, mtcars$mpg)

#More descriptive graph 
plot(mtcars$wt,mtcars$mpg,
     pch =19, #Solid circle
     cex = 1.5, #make 150% size
     col = "#cc0000",
     main = "MPG as a function of weight of Cars",
     xlab = "Weight(in 1000 pounds)",
     ylab = "MPG")
  

### Overlaying Plots 
#used to get more information 
?lynx
head(lynx)

#Default graph
hist(lynx)
 
#More detailed graph 
hist(lynx,
     breaks = 14,
     freq = F, #Axis shows density not Frequency
     col = "thistle1",
     main = paste("Histogram of annual Canadian Lynx","Trappings, 1821-19344"),
     xlab = "Number of lynx Trapped ")

#Add a normal distribution 
curve(dnorm(x,mean = mean(lynx), sd = sd(lynx)),
      col="thistle4",
      lwd=2, #line width 
      add=T ) #superimpose on previous graph

#Adding two Kernel density estimators
lines(density(lynx),col="blue", lwd =2)
lines(density(lynx, adjust =3), col="purple", lwd=2)

#Adding a rug plot
rug(lynx, lwd=2, col='grey')
