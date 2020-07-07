#### 바나나 분포에서 적용

# 공분산에 따른 분포 만들기 함수
# a~d는 공분산 행렬의 성분, x는 데이터의 갯수
# mean은 각 변수의 평균, sd 표준편차
# 데이터를 만들기 위해서
cov_simulation <- function(x,a,b,c,d,mean.x,mean.y,sd){
  set.seed(1234)
  cov <- matrix(c(a,b,c,d), nrow = 2, ncol = 2)
  x <- rnorm(x, mean = mean.x, sd = sd)
  y <- rnorm(x, mean = mean.y, sd = sd)
  xy <- cbind(x,y)
  cov.xy <- xy %*% cov
  cov.x <- cov.xy[,1]
  cov.y <- cov.xy[,2]
  return(list(plot = plot(cov.x,cov.y), cov.xy = cov.xy))
}
qwe <- cov_simulation(100,1,0,0,1,0,0,1)
qwe$cov.xy

# 바나나 분포
banana.data1 <- cov_simulation(100,1,0,0,1,-0.3,-0.7,0.33)$cov.xy
banana.data2 <- cov_simulation(100,1,0,0,1,0,0,0.33)$cov.xy
banana.data3 <- cov_simulation(100,1,0,0,1,0.7,0.7,0.33)$cov.xy
banana.data4 <- cov_simulation(100,1,0,0,1,1.5,1.1,0.33)$cov.xy
banana.data5 <- cov_simulation(100,1,0,0,1,2.3,1.1,0.33)$cov.xy
banana.data6 <- cov_simulation(100,1,0,0,1,3.1,1.1,0.33)$cov.xy
banana.data7 <- cov_simulation(100,1,0,0,1,3.9,0.7,0.33)$cov.xy
banana.data8 <- cov_simulation(100,1,0,0,1,4.6,0,0.33)$cov.xy
banana.data9 <- cov_simulation(100,1,0,0,1,4.9,-0.7,0.33)$cov.xy

banana.data_1 <- cov_simulation(100,1,0,0,1,2.3,-1.3,0.33)$cov.xy
banana.data_2 <- cov_simulation(100,1,0,0,1,2,-2,0.33)$cov.xy
banana.data_3 <- cov_simulation(100,1,0,0,1,1.3,-2.7,0.33)$cov.xy
banana.data_4 <- cov_simulation(100,1,0,0,1,0.5,-3.1,0.33)$cov.xy
banana.data_5 <- cov_simulation(100,1,0,0,1,-0.3,-3.1,0.33)$cov.xy
banana.data_6 <- cov_simulation(100,1,0,0,1,-1.1,-3.1,0.33)$cov.xy
banana.data_7 <- cov_simulation(100,1,0,0,1,-1.9,-2.7,0.33)$cov.xy
banana.data_8 <- cov_simulation(100,1,0,0,1,-2.6,-2,0.33)$cov.xy
banana.data_9 <- cov_simulation(100,1,0,0,1,-2.9,-1.3,0.33)$cov.xy

banana.data <- rbind(banana.data1,banana.data2,banana.data3,banana.data4,banana.data5,banana.data6,
                     banana.data7,banana.data8,banana.data9,banana.data_1,banana.data_2,banana.data_3,
                     banana.data_4,banana.data_5,banana.data_6,banana.data_7,banana.data_8,banana.data_9);plot(banana.data)
