classify <- function(features_train, labels_train) {
  library(e1071)
  dat = data.frame(features_train, labels_train)
  #clf.fit <- naiveBayes(features_train, labels_train)
  clf.fit <- naiveBayes(as.factor(labels_train) ~ ., data = dat)
  return(clf.fit)
}