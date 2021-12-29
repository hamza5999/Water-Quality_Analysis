library(ggplot2)
library(dplyr)
dataset <- read.csv("water_portability.csv")

colnames(dataset)
summary(dataset)

newdata <- dataset[complete.cases(dataset),]

ggplot2::ggplot(newdata,aes(Potability))+
  ggplot2::geom_bar()

ggplot(dataset,aes( Hardness, fill  = factor(Potability)))+
  geom_histogram(position = "identity", alpha = 0.5, bins = 80)

ggplot(dataset,aes( Organic_carbon, fill  = factor(Potability)))+
  geom_histogram(position = "identity", alpha = 0.5, bins = 80)

ggplot(dataset,aes( Trihalomethanes, fill  = factor(Potability)))+
  geom_histogram(position = "identity", alpha = 0.5, bins = 80)