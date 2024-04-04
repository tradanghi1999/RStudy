#library(readr)
#library(psych)
#urlfile = "https://raw.githubusercontent.com/lrjoshi/webpage/master/public/post/c159s.csv"
#mydata<-read_csv(url(urlfile))
#myCleanData <- mydata[, c(4,5,6)]
#describe(myCleanData$hpi)

# Create a sample data frame
df <- data.frame(
  z = c(8, 9, 9, 9, 10, 13, 15, 17)
)

# Calculate descriptive statistics

print(summary(df))
