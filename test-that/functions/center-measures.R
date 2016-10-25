center_measures <- function(x, na.rm = FALSE){
	c(median(x, na.rm= na.rm), mean(x, na.rm= na.rm))
}