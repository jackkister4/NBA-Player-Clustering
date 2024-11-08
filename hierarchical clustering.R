#Jack Kister project 4

#libraries
library(readxl)
library(cluster)

#data set
data<-read_excel("C:\\Users\\jackk\\OneDrive\\Desktop\\COSC 6520\\Jack Kister Applied Learning Exercise 4\\nbadata.xlsx")

#drop names for euclidean distance
data2 <- data[, -1]

#similarity measures
data2 <- dist(data2, method = "euclidean")

#agglomerative clustering
aResult <- agnes(data2, diss = TRUE, method = "ward")
aResult

#set number of clusters
plot(aResult, labels = FALSE)
aClusters <- cutree(aResult, k = 10)
aClusters <- cutree(aResult, k = 10)
aClusters <- cutree(aResult, k = 10)

#add cluster data to each player
myData<- data.frame(data, aClusters)

#how many observations in each cluster
summary(as.factor(aClusters))

#summary and list of all players in each cluster
#cluster 1
summary(subset(myData, aClusters == 1))
View(myData[aClusters == 1, ])

#cluster 2
summary(subset(myData, aClusters == 2))
View(myData[aClusters == 2, ])

#cluster 3
summary(subset(myData, aClusters == 3))
View(myData[aClusters == 3, ])

#cluster 4
summary(subset(myData, aClusters == 4))
View(myData[aClusters == 4, ])

#cluster 5
summary(subset(myData, aClusters == 5))
View(myData[aClusters == 5, ])

#cluster 6
summary(subset(myData, aClusters == 6))
View(myData[aClusters == 6, ])

#cluster 7
summary(subset(myData, aClusters == 7))
View(myData[aClusters == 7, ])

#cluster 8
summary(subset(myData, aClusters == 8))
View(myData[aClusters == 8, ])

#cluster 9
summary(subset(myData, aClusters == 9))
View(myData[aClusters == 9, ])

#cluster 10
summary(subset(myData, aClusters == 10))
View(myData[aClusters == 10, ])