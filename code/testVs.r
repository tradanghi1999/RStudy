library(httr)
#library(FactoMineR)
#library(shiny)
#library(tidyquant)
library(ggplot2)
library(dplyr)
library(tidyr)
library(readxl)

url <- "https://raw.githubusercontent.com/tradanghi1999/RStudy/main/regression/multi%20linear%20regression/ozone.txt"
response <- GET(url)
raw_text <- content(response, "parsed")
ozone <- read.table(text = raw_text, quote="\"", comment.char="")
#print(ozone)
print(dim(ozone))


#fit model
model <- lm(ozone$maxO3~maxO3v, data = ozone)
plot(ozone$maxO3~maxO3v, data = ozone)
abline(model)

#print summary
print(summary(model))