## non linear simulation
## 2개의 banana 데이터(지역적 패턴이 있는 데이터)  

set.seed(1000)
df=runif(200,-1,1)

# banana1
b1_x1 = rnorm(df, mean=-7, sd=.5)
b1_y1 = rnorm(df, mean=3, sd=.5)

b1_x2 = rnorm(df, mean=-6, sd=.5)
b1_y2 = rnorm(df, mean=2, sd=.5)

b1_x3 = rnorm(df, mean=-5, sd=.5)
b1_y3 = rnorm(df, mean=1, sd=.5)

b1_x4 = rnorm(df, mean=-4, sd=.5)
b1_y4 = rnorm(df, mean=0, sd=.5)           

b1_x5 = rnorm(df, mean=-3, sd=.5)
b1_y5 = rnorm(df, mean=1, sd=.5)

b1_x6= rnorm(df, mean=-2, sd=.5)
b1_y6 = rnorm(df, mean=2, sd=.5)

b1_x7 = rnorm(df, mean=-1, sd=.5)
b1_y7 = rnorm(df, mean=3, sd=.5)

# banana2 x,y 조절 파라미터 i,j
i=-5
j=7
# banana2
b2_x1 = rnorm(df, mean=1+i, sd=.5)
b2_y1 = rnorm(df, mean=-3+j, sd=.5)

b2_x2 = rnorm(df, mean=2+i, sd=.5)
b2_y2 = rnorm(df, mean=-2+j, sd=.5)

b2_x3 = rnorm(df, mean=3+i, sd=.5)
b2_y3 = rnorm(df, mean=-1+j, sd=.5)

b2_x4 = rnorm(df, mean=4+i, sd=.5)
b2_y4 = rnorm(df, mean=0+j, sd=.5)           

b2_x5 = rnorm(df, mean=5+i, sd=.5)
b2_y5 = rnorm(df, mean=-1+j, sd=.5)

b2_x6 = rnorm(df, mean=6+i, sd=.5)
b2_y6 = rnorm(df, mean=-2+j, sd=.5)

b2_x7 = rnorm(df, mean=7+i, sd=.5)
b2_y7 = rnorm(df, mean=-3+j, sd=.5)

banana1_x = c(b1_x1,b1_x2,b1_x3,b1_x4,b1_x5,b1_x6,b1_x7)
banana1_y = c(b1_y1,b1_y2,b1_y3,b1_y4,b1_y5,b1_y6,b1_y7)

banana2_x = c(b2_x1,b2_x2,b2_x3,b2_x4,b2_x5,b2_x6,b2_x7)
banana2_y = c(b2_y1,b2_y2,b2_y3,b2_y4,b2_y5,b2_y6,b2_y7)

banana1 = data.frame(b1_x1,b1_x2,b1_x3,b1_x4,b1_x5,b1_x6,b1_x7,b1_y1,b1_y2,b1_y3,b1_y4,b1_y5,b1_y6,b1_y7)
banana2 = data.frame(b2_x1,b2_x2,b2_x3,b2_x4,b2_x5,b2_x6,b2_x7,b2_y1,b2_y2,b2_y3,b2_y4,b2_y5,b2_y6,b2_y7)

banana_x=rbind(as.matrix(banana1_x),as.matrix(banana2_x))
banana_y=rbind(as.matrix(banana1_y),as.matrix(banana2_y))

banana=data.frame(banana_x,banana_y)

plot(banana)