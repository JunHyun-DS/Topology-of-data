## https://rdrr.io/cran/dimRed/man/dataSets.html

library(dimRed)
s_dataset = loadDataSet('3D S Curve', n=1000)

simulation_data = s_dataset@data

# 3D Plot
library(rgl) 
plot3d(simulation_data)

# 그외 여러가지 데이터 
dataSetList()
