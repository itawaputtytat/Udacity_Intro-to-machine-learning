makeTerrainData = function(n_points = 1000) {
  
  ## Make the toy dataset
  set.seed(42)
  grade <- runif(n_points, 0, 1)
  bumpy <- runif(n_points, 0, 1)
  error <- runif(n_points, 0, 1)
  y <- round(grade * bumpy + 0.3 + 0.1 * error)
  for (i in range(1, length(y))) {
    if (grade[i] < 0.8 | bumpy[i] > 0.8)
      y[i] <- 1
  }
  
  ## Split into train/test sets
  #X <- as.list(paste(grade, bumpy))
  X <- data.frame(grade, bumpy)
  split <- 0.75 * n_points
  X_train <- X[1:split, ]
  X_test  <- X[(split+1):length(X), ]
  y_train <- y[1:split]
  y_test  <- y[(split+1):length(y)]
  
  # grade_sig <- X_train[y_train == 0, 1]
  # bumpy_sig <- X_train[y_train == 0, 2]
  # grade_bkg <- X_train[y_train == 1, 1]
  # bumpy_bkg <- X_train[y_train == 1, 2]
  
  # training_data <- 
  #   list(fast = list(grade = grid_sig,
  #                    bumpiness = bumpy_sig),
  #        slow = list(grade = grid_bkg,
  #                    bumpiness = bumpy_bkg))
  
  # grade_sig <- X_test[y_test == 0, 1]
  # bumpy_sig <- X_test[y_test == 0, 2]
  # grade_bkg <- X_test[y_test == 1, 1]
  # bumpy_bkg <- X_test[y_test == 1, 2]

  # test_data <-
  #   list(fast = list(grade = grid_sig,
  #                    bumpiness = bumpy_sig),
  #        slow = list(grade = grid_bkg,
  #                    bumpiness = bumpy_bkg))
  
  return(list = list(grade = grade, 
                     bumpy = bumpy, 
                     error = error, 
                     y = y,
                     X = X,
                     split = split,
                     X_train = X_train,
                     X_test = X_test,
                     y_train = y_train,
                     y_test = y_test))
}