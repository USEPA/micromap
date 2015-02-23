sessionInfo()
library(micromap)
library(plyr)
library(XML)
data(USstates)
plot(USstates)

inputList <- ExtractXMLData('K:/GitProjects/Juergen_Korea/Miao_2014_06_04_data1.xml')
setwd('K:/GitProjects/Juergen_Korea')
library(rgeos)
ChinaShapefile <- gBuffer(ChinaShapefile, width=0, byid=T)
Polygons_areas <- sapply(slot(ChinaShapefile, "polygons"),
                         function(x) slot(x, "area"))
Polygons_areas
library(maptools)
head(ChinaShapefile@data)
ChinaShapefile$Country <- 'China'
IDs <- ChinaShapefile@data$Country
test <- unionSpatialPolygons(ChinaShapefile, IDs, threshold=100000000000)
test <- gUnaryUnion(ChinaShapefile, drop_lower_td=T)
test <- SpatialPolygonsDataFrame(test, data.frame(length(test@polygons)))
plot(test)
writeOGR(test, 'c:/temp','ChinaDissolve',driver='ESRI Shapefile')
