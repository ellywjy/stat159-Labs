spread_measures <- function(x, na.rm= FALSE){
	c(range(x, na.rm=na.rm), IQR(x,na.rm=na.rm), sd(x,na.rm=na.rm))
}