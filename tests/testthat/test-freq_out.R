context("Make a frequency table for a factor")

test_that("freq_out counts the number entries at each level", {
	x <- c('a', 'b', 'c', 'd')
	n <- as.integer(c(1,1,1,1))
	z <- dplyr::data_frame(x,n)

	y <- c('a', 'b', 'c', 'd', 'd')
	N <- as.integer(c(1,1,1,2))
	Z <- dplyr::data_frame(x,N)
	colnames(Z) <- c("x","n")

	expect_identical(freq_out(x), z)
	expect_identical(freq_out(y), Z)
})
