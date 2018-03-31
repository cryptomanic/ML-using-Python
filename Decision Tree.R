df <- read.csv("Desktop/ML-using-Python/tennis.csv")
library(rpart)
library(rattle) #fancyRpartPlot

fit <- rpart(play ~ ., data = df, method = "class", parms = list(split = "information"), 
             minsplit = 2, minbucket = 1)
fancyRpartPlot(fit)
