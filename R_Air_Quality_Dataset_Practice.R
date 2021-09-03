airquality <- datasets::airquality 

#it is a predefined dataset in R


head(airquality) #By Default it gives the six values from top


head(airquality,10) #We can initialize the no of data rows, here we want 10 rows from top 


tail(airquality)  #By Default it gives the six values from bottom

tail(airquality,10) #We can initialize the no of data rows, here we want 10 rows from bottom

airquality[,c(1,2)] #here we print the column 1 and 2 and all the rows

#we initialize rows left side of comma and right side of comma we declare column

airquality$Temp 
# dollar sign helps to print all data of temp column by the help of dollar sign we can extract any column

summary(airquality$Ozone)
#by this function we can find mean, median, mode, min, max, quartile and other summaries

summary(airquality)
# By this syntax we finds the all column summaries

summary(airquality$Wind)
#Here we find the summary of wind


#Now we starting the visualization
plot(airquality$Wind)

plot(airquality$Temp, airquality$Wind, type="p")
#Here we declare the type = p it's mean is points which is shown on your plot

plot(airquality)

plot(airquality$Wind, type="l") 
#Here We declare type=l which means we present the plot by line
plot(airquality$Wind, type = "b")
#Here We declare type=b which means we present the plot by line and point both

plot(airquality$Ozone, xlab = "Ozone Concentration in air", ylab = "No. of Instances", main = "Ozone level in New York City", col = "Blue")
#Here we declare the label for x axis and label for y axis and the main label for understanding the plot

barplot(airquality$Ozone, ylab = "Ozone Levels", main = "Ozone Concentration in air", col = "Blue", horiz = "F", axes = "T")
# Here we declare horiz = f which means we did not want our bar chart horizontal that's why it's 
# vertical and axes = t because we want the parameters on y axis
barplot(airquality$Ozone, ylab = "Ozone Levels", main = "Ozone Concentration in air", col = "Blue", horiz = "T", axes = "F")
#Now you can difference in both codes


#HISTOGRAM
hist(airquality$Temp)


hist(airquality$Temp, main = "Solar Radiation Values in Air", xlab = "Solar Radiation", col = "Blue")


boxplot(airquality$Wind,main = "Boxplot")


boxplot.stats(airquality$Wind)$out
#It tells about three outliers which was shown in box plot


boxplot(airquality[,1:4], main = "Multiple Plot")


par(mfrow=c(3,3), mar = c(2,5,2,1), las = "1", bty = "o")
#Here Understand above statement, in this statement par means parameter and mfrow means how 
#how many row and columns do you want las is for label how you wants your parameter if want in 
#horizontal then give the value 1 and if you want the vertical then 0
#and bty is stands for boundary do you want or not
#mar Means margin top=2, left=5, right=2 and bottom=1 i think
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Temp, type = "l")
plot(airquality$Solar.R, type = "l")
plot(airquality$Month,type = "l")
barplot(airquality$Ozone, ylab = "Ozone Levels", main = "Ozone Concentration in air", col = "Blue", horiz = "F", axes = "T")
hist(airquality$Temp)
hist(airquality$Temp, main = "Solar Radiation Values in Air", xlab = "Solar Radiation", col = "Blue")
boxplot(airquality$Wind,main = "Boxplot")





# It is another dataset
sd(airquality$Ozone,na.rm = "T")
