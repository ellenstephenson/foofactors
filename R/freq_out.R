#' Make a frequency table for a factor
#'
#'Use this function to count the number of entries at each level of the factor.
#'
#' @param x factor
#'
#' @return tbl_df
#' @export
#' @examples
#'#' freq_out(iris$Species)
freq_out <- function(x) {
	xdf <- dplyr::data_frame(x)
	dplyr::count(xdf, x)
}
