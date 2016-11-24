library(devtools)
use_git()

# There's a problem when you use c() on 2 factors. Let's write a function to fix that.



fbind <- function(a, b) {
	factor(c(as.character(a, as.character(b))))
}
