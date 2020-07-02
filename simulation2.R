## 밀도가 다른 분포 

set.seed(1000)
df=runif(1000,-1,1)

x1 = rnorm(df,mean=7,sd=1)
y1 = rnorm(df, mean=5, sd=1)

x2 = rnorm(df, mean=3, sd=.1)
y2 = rnorm(df, mean=-3, sd=.1)

x3 = rnorm(df, mean=-15, sd=5)
y3 = rnorm(df, mean=10, sd=5)

x = c(x1,x2,x3)
y = c(y1,y2,y3)

simulated_df = data.frame(x,y)

plot(x,y)
