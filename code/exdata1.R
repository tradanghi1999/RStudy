#import library
library(ggplot2)

#import data
ex1data1 <- read.csv("~/MVA2024/ex1data1.txt")

#print metadata
print(dim(ex1data1))

#visualzie data
print(ggplot(data = ex1data1, aes(x = Pop, y = FoodtruckProfit)))
print(ggplot(data=ex1data1,aes(x=Pop,y=FoodtruckProfit)) + geom_point(col="blue"))

# therefore predict that there is a linear relationship 
# between x=Pop,y=FoodtruckProfit

#model
model <- lm(ex1data1$FoodtruckProfit~Pop, data = ex1data1)

#visualize model
print(ggplot(data = ex1data1, aes(x = Pop, y = FoodtruckProfit)) + geom_point() + geom_smooth(method='lm', se=TRUE))

#summary the model
print(summary(model))
