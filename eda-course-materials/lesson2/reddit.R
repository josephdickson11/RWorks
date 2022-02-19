redditData <- read.csv('eda-course-materials/lesson2/reddit.csv')

#check data types
str(redditData)
#check variable summary
summary(redditData)
#check dataset dimensions
dim(redditData)
#check factor distribution
table(redditData$marital.status)
#check factor levels
levels(redditData$marital.status)
levels(redditData$age.range)

#plot age range data
library(ggplot2)
qplot(data = redditData, x = age.range)
#plot other factors to check for need to order
qplot(data = redditData, x = income.range)
?factor

#ordering a factor before plotting
qplot(data = redditData, x  = ordered(age.range, levels =c('Under 18',
                                                             '18-24',
                                                             '25-34',
                                                             '35-44',
                                                             '45-54',
                                                             '55-64',
                                                             '65 or above') ))

#alternate solution
redditData$age.range <- factor(redditData$age.range, levels = c('Under 18',
                                                                '18-24',
                                                                '25-34',
                                                                '35-44',
                                                                '45-54',
                                                                '55-64',
                                                                '65 or above'),
                               ordered = T)

#reorder income range
levels(redditData$income.range)
redditData$income.range <- factor(redditData$income.range, levels = c(
  "Under $20,000","$20,000 - $29,999","$30,000 - $39,999","$40,000 - $49,999",
  "$50,000 - $69,999","$70,000 - $99,999","$100,000 - $149,999","$150,000 or more"
), ordered = T)
qplot(data = redditData, x=income.range)
