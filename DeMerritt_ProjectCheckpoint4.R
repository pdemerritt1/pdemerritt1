# Green Gentrification: Investigating the Correlation between the Westside Reservoir Park and Housing Prices in Grove Park
# By Paul DeMerritt (pdemerritt3@gatech.edu)
# 2019-09-15
# This dataset contains information relating to housing characteristics and sales information from houses in Fulton County from 2010 - 2019
# The following variables are included: Natural log of Sales Price, Age of house, Natural log of acreage, Natural log of square footage, dummy variable for 1/2 mile proximity to Westside Reservoir Park, dummy variables for the year of sales prices from 2010-2019
# https://docs.google.com/spreadsheets/d/1Ey0fAXzBYtcIjg3PJUDlmJqb5iJGuSEvGKgbl-k9Iio/edit?usp=sharing
# setwd(choose.dir())
# install.packages("ggplot2")
library(ggplot2)
GPData <- read_excel("//coafs8.ad.gatech.edu/students/pdemerritt3/Downloads/FinalJoinedParcelsLNEditz.xlsx")View(FinalJoinedParcelsLNEditz)
View(GPData)
summary(GPData)
GPRegress <- lm(SALEPRICE ~ AGE + Acres + SqFeet + WS + PreZ + PreOZ + OZ + OO + OTW + OT + OF + OS + OSV + OE + ON, data=GPData)
summary(GPRegress)
plot(GPRegress)
plot(GPRegress$SALEPRICE, GPRegress$WS)
plot(GPRegress$SALEPRICE, GPRegress$SqFeet)
ggplot(GPRegress, aes(x=SALEPRICE, y=WS)) + geom_point()
ggplot(GPRegress, aes(x=SALEPRICE, y=SqFeet, color=WS)) + geom_point()
