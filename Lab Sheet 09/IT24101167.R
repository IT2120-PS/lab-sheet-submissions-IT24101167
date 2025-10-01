setwd("C:\\Users\\hansana619\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24101167")

x<-c(3,7,11,0,7,0,4,5,6,2)
t.test(x, mu=3)

weight<-c(17.6,20.6,22.2,15.3,20.9,21.0,18.9,18.9,18.9,18.2)
t.test(weight , mu=25 , alternative= "less")

res<-t.test(weight, mu=25 , alternative= "less")
res$statistic
res$p.value
res$conf.int


y <- rnorm(30,mean=9.8,sd=0.05)
t.test(y, mu=10 , alternative="greater")

##Exercise
# Set seed for reproducibility
set.seed(123)
# Part (i) Generate random sample
sample_size <- 25
mu <- 45
sigma <- 2
baking_times <- rnorm(sample_size, mean = mu, sd = sigma)
print(baking_times)
# Part (ii) Hypothesis test
# H0: mean = 46
# H1: mean < 46

t_test_result <- t.test(baking_times, mu = 46, alternative = "less")
print(t_test_result)

