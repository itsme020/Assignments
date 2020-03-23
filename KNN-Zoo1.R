attach(Zoo)

Zoo <- Zoo[-1]
table(Zoo$animal.name)
prop.table(table(Zoo$animal.name))*100
round(prop.table(table(Zoo$animal.name))*100, digits = 1)

normalize<-function(X){return(X-min(X))/ (max(X)-min(X))}

dataset_n<-as.data.frame(lapply(Zoo[1:17], normalize))

summary(dataset_n)                        

dataset_train <- dataset_n[1:80,]
dataset_test <- dataset_n[81:101,]
dataset_train_labels <- Zoo[1:80,17]
dataset_test_labels <- Zoo[81:101,17]

library(class)
dataset_pred <- knn(train = dataset_train, test = dataset_test, cl = dataset_train_labels, k=5)
library(gmodels)
CrossTable(x=dataset_test_labels,y=dataset_pred,prop.chisq=FALSE,prop.c=FALSE,prop.r=FALSE)
plot(dataset_pred, type="b", xlab="K- Value",ylab="Accuracy level")


dataset_train <- dataset_n[1:80,]
dataset_test <- dataset_n[81:101,]
dataset_train_labels <- Zoo[1:80,17]
dataset_test_labels <- Zoo[81:101,17]
library(class)
dataset_pred <- knn(train = dataset_train, test = dataset_test, cl = dataset_train_labels, k=12)
library(gmodels)
CrossTable(x=dataset_test_labels,y=dataset_pred,prop.chisq=FALSE,prop.c=FALSE,prop.r=FALSE)
plot(dataset_pred, type="b", xlab="K- Value",ylab="Accuracy level")


