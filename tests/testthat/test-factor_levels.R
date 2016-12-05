context("Maintain factor levels")

test_that("factor_levels order as is", {
	x <- c('c', 'a', 'b')
	x_fact <- factor(x)

	expect_identical(levels(factor_levels(x)), x)
	expect_identical(levels(factor_levels(x_fact)), x)

	})
