## 바나나 분포에서 적용

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

banana_data = function(){
  # 바나나 분포
  banana1_data1 <- cov_simulation(100,1,0,0,1,-0.3,-0.7,0.33)$cov.xy
  banana1_data2 <- cov_simulation(100,1,0,0,1,0,0,0.33)$cov.xy
  banana1_data3 <- cov_simulation(100,1,0,0,1,0.7,0.7,0.33)$cov.xy
  banana1_data4 <- cov_simulation(100,1,0,0,1,1.5,1.1,0.33)$cov.xy
  banana1_data5 <- cov_simulation(100,1,0,0,1,2.3,1.1,0.33)$cov.xy
  banana1_data6 <- cov_simulation(100,1,0,0,1,3.1,1.1,0.33)$cov.xy
  banana1_data7 <- cov_simulation(100,1,0,0,1,3.9,0.7,0.33)$cov.xy
  banana1_data8 <- cov_simulation(100,1,0,0,1,4.6,0,0.33)$cov.xy
  banana1_data9 <- cov_simulation(100,1,0,0,1,4.9,-0.7,0.33)$cov.xy
  
  banana2_data1 <- cov_simulation(100,1,0,0,1,2.3,-1.3,0.33)$cov.xy
  banana2_data2 <- cov_simulation(100,1,0,0,1,2,-2,0.33)$cov.xy
  banana2_data3 <- cov_simulation(100,1,0,0,1,1.3,-2.7,0.33)$cov.xy
  banana2_data4 <- cov_simulation(100,1,0,0,1,0.5,-3.1,0.33)$cov.xy
  banana2_data5 <- cov_simulation(100,1,0,0,1,-0.3,-3.1,0.33)$cov.xy
  banana2_data6 <- cov_simulation(100,1,0,0,1,-1.1,-3.1,0.33)$cov.xy
  banana2_data7 <- cov_simulation(100,1,0,0,1,-1.9,-2.7,0.33)$cov.xy
  banana2_data8 <- cov_simulation(100,1,0,0,1,-2.6,-2,0.33)$cov.xy
  banana2_data9 <- cov_simulation(100,1,0,0,1,-2.9,-1.3,0.33)$cov.xy
  
  # banana 상단
  banana1_data = rbind(banana1_data1, banana1_data2, banana1_data3, banana1_data4, banana1_data5,
                       banana1_data6, banana1_data7, banana1_data8, banana1_data9)
  
  # banana 하단
  banana2_data = rbind(banana2_data1, banana2_data2, banana2_data3,banana2_data4, banana2_data5, banana2_data6,
                        banana2_data7, banana2_data8, banana2_data9)
  
  ## simulation8 data
  banana_data <- rbind(banana1_data, banana2_data)
  
  return(list(banana=banana_data, banana1=banana1_data, banana2=banana2_data))

}

banana_data = banana_data()

# test cluster
test_cluster = function(){
  test_cluster1 = matrix(1, nrow(banana_data$banana1))
  test_cluster2 = matrix(2, nrow(banana_data$banana2))
  test_cluster = rbind(test_cluster1, test_cluster2)
  
  return(test_cluster)
}

# banana data
simulation_data = banana_data$banana

# 실제 cluster
test_cluster = test_cluster()

# banana데이터 시각화 
plot(simulation_data)
