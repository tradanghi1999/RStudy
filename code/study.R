library(httr)
url <- "https://raw.githubusercontent.com/tradanghi1999/RStudy/main/regression/multi%20linear%20regression/study.txt"
response <- GET(url)
raw_text <- content(response, "parsed")
study <- read.table(text = raw_text, sep="\t", header = TRUE)

model <- lm(study$ExamScore~HoursStudied, data = study)
print(summary(model))


#calculate confidence interval for regression coefficient for 'hours'
print(confint(model, 'HoursStudied', level=0.95))

