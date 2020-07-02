## 원형 분포 

angle <- seq(-pi, pi, length=1000) 
x1 <- 4+5*cos(angle)
y1 <- 3+5*sin(angle)

x2 = 4+2*cos(angle)
y2 = 3+2*sin(angle)

x = c(x1,x2)
y = c(y1,y2)

simulated_df = data.frame(x,y)

plot(x,y, type="p")


