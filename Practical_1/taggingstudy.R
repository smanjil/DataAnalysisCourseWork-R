
# Author: Manjil Shrestha
# Date: 2018-04-18
# Read two text files as separate dataframe and merge them, as well convert temperatures from celsius to fahrenheit

# reset R's brain
rm(list = ls())

# set working directory
setwd("/home/ano/Documents/DataAnalysisCourseWork-R/Practical_1/")
getwd()

# reading files Sight2008.txt and Sight2009.txt and assigning in respective dataframes
dat08 <- read.table(file.choose(), header = TRUE)
dat09 <- read.table(file.choose(), header = TRUE)

# merge dataframe dat08 and dat09 into dat
dat <- merge(dat08, dat09, all = TRUE)

# extract the temperature column from the data frame dat and convert it to Fahrenheit
tempsF <- dat["Temperature"] * 1.8 + 32

# add tempsF as a new column to dat dataframe with column name TemperatureFah
dat["TemperatureFah"] <- tempsF

# export dat into a new file on your hard-disk (call it "SightE.xls")
write.table(dat, "SightE.xls", sep = ",", row.names = FALSE)
