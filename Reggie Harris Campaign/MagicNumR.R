# 2013, 21 candidates, 59692 ballots cast
# 9th: 23136 votes, 10th: 21571 votes

# 2017, 24 candidates, 64097 ballots cast
# 9th: 21982 votes, 10th: 21765 votes

# 2021, 35 candidates, 53847 ballots cast
# 9th: 17497 votes, 10th: 15910 votes
library(readxl)
library(tidyverse)
MagicNumData <- read_xlsx("~/DSCI 210/MagicNumData.xlsx")
magicRatio <- MagicNumData %>% mutate(percent = `Votes for Candidate`/`Total Votes`)
magicReg <- lm(magicRatio$percent~magicRatio$`# of Candidates`)
summary(magicReg)
magicCanEst <- data.frame( `# of Candidates`= c(10))
predict(magicReg, magicCanEst)
