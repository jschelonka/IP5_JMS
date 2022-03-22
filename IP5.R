dataset = read.csv('Self Awareness Dataset.csv')

install.packages('caTools')
library('caTools')
set.seed(123)
split = sample.split(dataset$Number, SplitRatio = 48/65)
training_set = subset(dataset, split == TRUE)
testing_set = subset(dataset, split == FALSE)

regressor <- lm(formula = dataset$Number~dataset$Work.Hour, data = training_set)
summary(regressor)

new <- data.frame(Sleep.Hour = 7, Exercise.Hour = 4, Study.Hour = 3,
                  StudyDS.Hour = 0, Work.Hour = 4)

predict(regressor, new)

new2 <- data.frame(Sleep.Hour = 8, Exercise.Hour = 2, Study.Hour = 2,
                  StudyDS.Hour = 2, Work.Hour = 3)

predict(regressor, new2)

new3 <- data.frame(Sleep.Hour = 7, Exercise.Hour = 4, Study.Hour = 4,
                  StudyDS.Hour = 0, Work.Hour = 2)

predict(regressor, new3)

new4 <- data.frame(Sleep.Hour = 9, Exercise.Hour = 2, Study.Hour = 0,
                  StudyDS.Hour = 0, Work.Hour = 2)

predict(regressor, new4)

new5 <- data.frame(Sleep.Hour = 9, Exercise.Hour = 2, Study.Hour = 0,
                  StudyDS.Hour = 0, Work.Hour = 4)

predict(regressor, new5)
