set.seed(1)
outdoor = rnorm(100, mean = 75, sd = 5)

ad = outdoor*0.5 + rnorm(100, mean = 0, sd = 1)

sales = outdoor*1 + ad*0.01 +  rnorm(100, mean = 0, sd = 1)

cor(sales, ad)

plot(sales, ad)



