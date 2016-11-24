# library(devtools)
# use_git()

# There's a problem when you use c() on 2 factors. Let's write a function to fix that.

# a <- factor(c("factors", "don't", "mix", "well"))
# b <- factor(c("force", "to", "integer", "sucks"))
# c(a,b)

fbind <- function(a, b) {
	factor(c(as.character(a), as.character(b)))
}
