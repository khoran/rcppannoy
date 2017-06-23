library(RcppAnnoy)

set.seed(123)                           # be reproducible

f <- 40
a <- new(AnnoyEuclidean, f)
n <- 50                                 # not specified

for (i in seq(n)) {
    v <- rnorm(f)
    message("adding ",i-1)
    a$addItem(i-1, v)
}

a$build(50)                           	# 50 trees
a$save("test.tree")


#b <- new(AnnoyEuclidean, 40)           	# new object, could be in another process
#b$load("test.tree")		# super fast, will just mmap the file

#xx = b$getNNsByItem(1, 40)
