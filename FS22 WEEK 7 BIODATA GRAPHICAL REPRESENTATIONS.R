#biodata graphical representations

#re,oving rows with na
carsalesclean=na.omit(Car_Sales)
carsalesclean
colSums(is.na(carsalesclean))

names(bio_data)
par(mfrow=c(2,2))
hist(bio_data$sales,xlab = "SALES",main = "HISTOGRAM OF SALES")
hist(bio_data$price,xlab = "PRICE", main = "HISTOGRAM OF PRICE")
hist(bio_data$fuel_cap,xlab = "FUEL CAPACITY", main = "FUEL CAPACITY")        
hist(bio_data$prm_1,xlab = "PRM_1", main = "PRM") 

#plotting categorical data on histogram
par(mfrow=c(1,1))
library(ggplot2)
ggplot(bio_data,aes(x=prm_1,y=prm_1,function(x)-length(x))) +
  geom_bar(fill="red")+labs(x="PRM")

ggplot(bio_data,aes(x=prm_1,prm_1,function(x)-length(x))))+
  geom_bar(fill="yellow")+labs(x="PRM")


#box plots by group categorical data
ggplot(bio_data,aes(x=prm_1,y=price))+geom_boxplot(fill="blue") #worked


#using mosaic plot
##A mosaic plot is a form of a graph that shows the frequencies of 
#two categorical variables on the same graph.

##he following code demonstrates how to make a mosaic plot that displays the 
#frequency of the categorical variables “result” and “team” in one figure

##Create the counts
counts<-table(bio_data$prm_1,bio_data$sales)
#mosiac plot
mosaicplot(counts,xlab = "PRM",ylab = "SALES",main = "sales vs prm",color = "orange") #worked


count1<-table(Car_Sales$manufact,Car_Sales$model)
mosaicplot(count1,xlab = "manufacturer",ylab = "model",main = "manufact and model",color = "steelblue")

#pie chART
table(prm_1)
pie(x=prm_1,labels = names(prm_1),main = "DISTRIBUTION OF PRM")
