prettyPicture <- function(clf, X_test, y_test) {
  x_min <- 0
  x_max <- 1
  y_min <- 0
  y_max <- 1
  
  ## Plot the decision boundary. For that, we will assign a color to each point
  ## in the mesh [x_min, m_max]x[y_min, y_max].
  h <- .01 # Step size in the mesh
  xx_seq <- seq(x_min, x_max, h)
  xx_seq <- xx_seq[1:length(xx_seq)-1]
  yy_seq <- seq(y_min, y_max, h)
  yy_seq <- yy_seq[1:length(yy_seq)-1]
  dat_temp <- expand.grid(xx_seq, yy_seq)
  Z <- predict(clf, dat_temp)
  
  ## Put the result in to a color plot
  Z <- matrix(Z, nrow = nrow(xx), ncol = ncol(xx))
  Z <- as.numeric(Z)
}
