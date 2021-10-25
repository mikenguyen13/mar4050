# visualization
# mean CI

n.draw = 100
mu = 9
n = 500
SD = 1.5

draws = matrix(rnorm(n.draw * n , mu, SD), n)

get.conf.int = function(x) t.test(x)$conf.int
conf.int = apply(draws, 2, get.conf.int)
sum(conf.int[1, ] <= mu & conf.int[2, ] >= mu)

plot(
  range(conf.int),
  c(0, 1 + n.draw),
  type = "n",
  xlab = "mean tail length",
  ylab = "sample run"
)
for (i in 1:n.draw) lines(conf.int[, i], rep(i, 2), lwd = 2)
abline(v = 9, lwd = 2, lty = 2)


