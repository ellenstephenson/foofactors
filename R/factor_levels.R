#' Maintain factor levels as is
#'
#'This function turns a character variable into a factor
#'and keeps the factor levels in the same order that they appear in the dataset.
#'
#' @param x factor
#'
#' @return factor
#' @export
#' @examples
#' (A <- fbind(iris$Species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)]))
#' factor_levels(A)
#' levels(A)

factor_levels <- function(x) {
	factor(as.character(x), levels = unique(as.character(x)))
}
