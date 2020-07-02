## 분산이 다른 분포 
## 분산2개가 같고 한개는 다른 case

set.seed(1000)
df=runif(1000,-1,1)

x1 = rnorm(df,mean=5,sd=1)
y1 = rnorm(df, mean=5, sd=1)

x2 = rnorm(df, mean=5, sd=1)
y2 = rnorm(df, mean=-5, sd=1)

x3 = rnorm(df, mean=-10, sd=5)
y3 = rnorm(df, mean=-10, sd=5)

x = c(x1,x2,x3)
y = c(y1,y2,y3)

simulated_df = data.frame(x,y)

kmeans_m = kmeans(simulated_df, centers=3, iter.max=1000)


plot(x=x,y=y)
plot(x=x,y=y, col=kmeans_m$cluster)



iris