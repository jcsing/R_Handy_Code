###Handy using Hmisc for multiple histograms
library(Hmisc)
hist.data.frame(Glass)
library(mlbench)
data(Glass)
hist.data.frame(Glass)
#Very simple way of doing the scatterplots
data(Glass)

#Get all the numeric columns
nums <- sapply(Glass, is.numeric)
x <- Glass[ , nums]


#Sample Code to transform, centre, scale and PCA
segPP <- preProcess(segTrainX, c("BoxCox", "center", "scale"))
segTrainTrans <- predict(segPP, segTrainX)



segPCA <- prcomp(segTrainTrans, center = TRUE, scale. = TRUE)
