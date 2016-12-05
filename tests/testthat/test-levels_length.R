context("Check the length of the factor against the number of levels")

test_that("levels_length compares factor levels and length)", {
	x <- c('a', 'b', 'b')
	x_fact <- factor(x)
	y <- c('c', 'd')
	y_fact <- factor(y)

	expect_identical(levels_length(x_fact), FALSE)
	expect_identical(levels_length(y_fact), TRUE)
})

