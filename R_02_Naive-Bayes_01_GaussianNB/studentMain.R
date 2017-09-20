source("R_02_Naive-Bayes_01_GaussianNB/makeTerrainData.R")

dat <- makeTerrainData()
features_train <- dat$X_train
labels_train <- dat$y_train
features_test <- dat$X_test
labels_test <- dat$y_test

## The training data (features_train, labels_train) have both "fast" and "slow" 
## points mixed in together -- separate them so we can give them different 
## colors in the scatterplot, and visually identify them
grade_fast <- features_train[labels_train == 0, 1]
bumpy_fast <- features_train[labels_train == 0, 2]
grade_slow <- features_train[labels_train == 1, 1]
bumpy_slow <- features_train[labels_train == 1, 2]

clf <- classify(features_train, labels_train)

## Draw the decision boundary with the text points overlaid