library(psych)
library(xlsx)
library(ggplot2)
library(ggmap)

#1864 GGMAP 
data1864 = read.xlsx("washington1864.xlsx", 1, header = FALSE)
data1864 = data1864[,1:3]
colnames(data1864)<-c("Name", "Address", "Profession")

#downloaded map
dc_map <- get_map(location = "washington dc", zoom = 13)

names1864<-data1864[,1]
profession1864<-data1864[,3]
addresses<-as.character(data1864[,2])
addresses
longLat1864<-geocode(addresses)
longLat1864
#DATA PREPPED FOR GGMAP
newData1864<-cbind.data.frame(names1864 ,longLat1864$lon ,longLat1864$lat, profession1864)

png(filename="1864headmap.png", 
    units="in", 
    width=5, 
    height=4, 
    pointsize=12, 
    res=1200)
ggmap(dc_map, extent = "device") + geom_density2d(data = longLat1864, aes(x = lon, y = lat), size = 0.3) + 
  stat_density2d(data = longLat1864, 
                 aes(x = lon, y = lat, fill = ..level.., alpha = ..level..), size = 0.01, 
                 bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
  scale_alpha(range = c(0, 0.3), guide = FALSE)

dev.off()



#1871 GGMAP 
data1871 = read.xlsx("washington1871clean.xlsx", 1, header = FALSE)
colnames(data1871)<-c("Name", "Address", "Profession")

names1871<-data1871[,1]
profession1871<-data1871[,3]
addresses<-as.character(data1871[,2])
longLat1871<-geocode(addresses)

#DATA PREPPED FOR GGMAP
newData1871<-cbind.data.frame(names1871 ,longLat1871$lon ,longLat1871$lat, profession1871)

png(filename="1871headmap.png", 
    units="in", 
    width=5, 
    height=4, 
    pointsize=12, 
    res=1200)
ggmap(dc_map, extent = "device") + geom_density2d(data = longLat1871, aes(x = lon, y = lat), size = 0.3) + 
  stat_density2d(data = longLat1871, 
                 aes(x = lon, y = lat, fill = ..level.., alpha = ..level..), size = 0.01, 
                 bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
  scale_alpha(range = c(0, 0.3), guide = FALSE)
dev.off()

#1878 Heat Map
data1878 = read.xlsx("washington1878clean.xlsx", 1, header = FALSE)
colnames(data1878)<-c("Name", "Address", "Profession")

names1878<-data1878[,1]
profession1878<-data1878[,3]
addresses<-as.character(data1878[,2])
longLat1878<-geocode(addresses)

#DATA PREPPED FOR GGMAP
newData1878<-cbind.data.frame(names1878 ,longLat1878$lon ,longLat1878$lat, profession1878)

png(filename="1878headmap.png", 
    units="in", 
    width=5, 
    height=4, 
    pointsize=12, 
    res=1200)
ggmap(dc_map, extent = "device") + geom_density2d(data = longLat1878, aes(x = lon, y = lat), size = 0.3) + 
  stat_density2d(data = longLat1878, 
                 aes(x = lon, y = lat, fill = ..level.., alpha = ..level..), size = 0.01, 
                 bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
  scale_alpha(range = c(0, 0.3), guide = FALSE)
dev.off()

#1881 GGMAP 
data1881 = read.xlsx("washington1881clean.xlsx", 1, header = FALSE)
colnames(data1881)<-c("Name", "Address", "Profession")

names1881<-data1881[,1]
profession1881<-data1881[,3]
addresses<-as.character(data1881[,2])
longLat1881<-geocode(addresses)
longLat1881

#DATA PREPPED FOR GGMAP
newData1881<-cbind.data.frame(names1881 ,longLat1881$lon ,longLat1881$lat, profession1881)

png(filename="1881headmap.png", 
    units="in", 
    width=5, 
    height=4, 
    pointsize=12, 
    res=1200)
ggmap(dc_map, extent = "device") + geom_density2d(data = longLat1881, aes(x = lon, y = lat), size = 0.3) + 
  stat_density2d(data = longLat1881, 
                 aes(x = lon, y = lat, fill = ..level.., alpha = ..level..), size = 0.01, 
                 bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
  scale_alpha(range = c(0, 0.3), guide = FALSE)
dev.off()

#1893 GGMAP 
data1893 = read.xlsx("washington1893clean.xlsx", 1, header = FALSE)
colnames(data1893)<-c("Name", "Address", "Profession")

names1893<-data1893[,1]
profession1893<-data1893[,3]
addresses<-as.character(data1893[,2])
longLat1893<-geocode(addresses)

#DATA PREPPED FOR GGMAP
newData1893<-cbind.data.frame(names1893 ,longLat1893$lon ,longLat1893$lat, profession1893)

png(filename="1893headmap.png", 
    units="in", 
    width=5, 
    height=4, 
    pointsize=12, 
    res=1200)
ggmap(dc_map, extent = "device") + geom_density2d(data = longLat1893, aes(x = lon, y = lat), size = 0.3) + 
  stat_density2d(data = longLat1893, 
                 aes(x = lon, y = lat, fill = ..level.., alpha = ..level..), size = 0.01, 
                 bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
  scale_alpha(range = c(0, 0.3), guide = FALSE)
dev.off()

#1894 ggmap
data1894 = read.xlsx("washington1894clean.xlsx", 1, header = FALSE)
colnames(data1894)<-c("Name", "Address", "Profession")

names1894<-data1894[,1]
profession1894<-data1894[,3]
addresses<-as.character(data1894[,2])
longLat1894<-geocode(addresses)

#DATA PREPPED FOR GGMAP
newData1894<-cbind.data.frame(names1894 ,longLat1894$lon ,longLat1894$lat, profession1894)

png(filename="1894headmap.png", 
    units="in", 
    width=5, 
    height=4, 
    pointsize=12, 
    res=1200)
ggmap(dc_map, extent = "device") + geom_density2d(data = longLat1894, aes(x = lon, y = lat), size = 0.3) + 
  stat_density2d(data = longLat1894, 
                 aes(x = lon, y = lat, fill = ..level.., alpha = ..level..), size = 0.01, 
                 bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
  scale_alpha(range = c(0, 0.3), guide = FALSE)
dev.off()