# import library
library(ggplot2)

# import data
ex1data2 <- read.csv("~/MVA2024/ex1data2.txt")

# print metadata
print(dim(ex1data2))

# visualzie data
pairs(ex1data2[,c(1,2,3)])



# therefore predict that there is a linear relationship
# between x=Size,y=Price

# model
model <- lm(ex1data2$Price ~ Size, data = ex1data2)

# visualize model
print(ggplot(data = ex1data2, aes(x = Size, y = Price)))
print(ggplot(data = ex1data2, aes(x = Size, y = Price)) +
  geom_point(col = "blue"))
print(ggplot(data = ex1data2, aes(x = Size, y = Price)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE))

# summary the model
print(summary(model))
