levels_length <- function(x) {
	length(x) == dplyr::n_distinct(levels(x))
}
