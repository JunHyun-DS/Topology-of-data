## 4개의 정규분포
simulation_data = function(){
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
  
  simulation_data = data.frame(x,y)
  
  return(simulation_data) 
}
