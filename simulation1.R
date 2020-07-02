## 4개의 정규분포

set.seed(1000)
df=runif(1000,-1,1)

x1 = rnorm(df,mean=5,sd=1)
y1 = rnorm(df, mean=5, sd=1)

x2 = rnorm(df, mean=5, sd=1)
y2 = rnorm(df, mean=-5, sd=1)

x3 = rnorm(df, mean=-5, sd=1)
y3 = rnorm(df, mean=-5, sd=1)

x4 = rnorm(df, mean=-5, sd=1)
y4 = rnorm(df, mean=5, sd=1)

x = c(x1,x2,x3,x4)
y = c(y1,y2,y3,y4)


simulated_df = data.frame(x,y)

par(mfrow=c(1,1))
# cluter=4

kmeans_m = kmeans(simulated_df, centers=4, iter.max=1000)

 
plot(x=x,y=y)

plot(x=x,y=y, col=kmeans_m$cluster)