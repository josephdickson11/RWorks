getwd()
statesData <- read.csv("stateData.csv")
head(statesData, 10)


#subset data in region 4
regionFour <- subset(statesData, state.region == 4)
head(regionFour, 2)
dim(regionFour)
#another way to subset
regionOne <- statesData[statesData$state.region == 1, ]
head(regionOne, 2)
dim(regionOne)

#illiteracy rate of o.5 percent
lowIlliteracy <- subset(statesData, illiteracy <= 0.5)
head(lowIlliteracy, 2)
dim(lowIlliteracy)

#highschoolgrad above 50%
highLiteracy <- statesData[statesData$highSchoolGrad >= 50, ]
head(highLiteracy,2)
dim(highLiteracy)
