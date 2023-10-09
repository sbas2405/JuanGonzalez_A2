library(tidyverse)
library(caret)
library(dplyr)
library(class)
library(gmodels)
folder<-dirname(rstudioapi::getSourceEditorContext()$path)
parentFolder <-dirname(folder)
data <- read.csv(paste0(parentFolder,"/DATASET/diabetes_012.csv"))

data$Diabetes_012 <- ifelse(data$Diabetes_012 == 0, 0, 1)

