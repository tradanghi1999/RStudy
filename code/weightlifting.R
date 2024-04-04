library(readxl)
library(ggplot2)

weightlifing <- read_excel("C:/Users/trada/Documents/MVA2024/weightlifing.xlsx")
print(head(weightlifing))

#plot
print(ggplot(data = weightlifing, aes(x = Age, y = Clean)))