Car_Sales
summary(Car_Sales)
head(Car_Sales, 6)
names(Car_Sales)
sapply(Car_Sales, class)

attach(Car_Sales)


#replacing #NULL! with NA
Car_Sales[Car_Sales=="#NULL!"]<-NA
View(Car_Sales)

#checking for missing data
library(mice)
md.pattern(Car_Sales)

#graphical representation of missing data
library(finalfit)
Car_Sales%>%
  missing_plot()

#sum of missing values
colSums(is.na(Car_Sales))

apply(Car_Sales,2,mean,na.rm=TRUE)

#replacing missing variables with 0
Car_Sales[rowSums(is.na(Car_Sales))==0]

#creating bioinformatic data set
newdata=Car_Sales[c("sales","price","horsepow","engine_s","wheelbas")]
summary(newdata)

par(mfrow=c(2,2))
hist(Car_Sales$sales,xlab = "SALES",main = "HISTOGRAM OF SALES")
hist(Car_Sales$price,xlab = "PRICE", main = "HISTOGRAM OF PRICE")
hist(Car_Sales$fuel_cap,xlab = "FUEL CAPACITY", main = "FUEL CAPACITY")


#boxplot
boxplot(newdata$price[0:5],main="BOX PLOTS FOR PRICE")
boxplot(newdata$sales[0:5],main="BOX PLOTS FOR SALES")

boxplot(newdata[,0:5],main="BOXPLOTS") #boxplot for multiple variables

#clustering



install.packages("heatmap3")
install.packages("pheatmap")
library(heatmap3)
library(pheatmap)

heatmap(Car_Sales$sales, scale = "row")
pheatmap(Car_Sales, cutree_rows = 4)
library(NMF)
aheatmap(newdata,Rows=NA, scale=row)

#CLUTERING CODES
par(mfrow=c(1,1))
ddd=dist(Car_Sales,method = "euclidean")
fit=hclust(ddd,method = 'ward.D')
plot(fit)

summary(newdata)
barplot(Car_Sales,)

table(manufact)
b=c(4,3,3,4,5,9,6,11,11,5,3,1,1,3,6,3,9,6,7,7,6,4,6,3,2,5,2,9,6,6)
LABB= c("AU","AUD","BNW","BUI" "CADILLAC","CHEVROLET","CHRY","THU","DODGE","FORD","HON","HYD","INFINI","JAG","JEEP","LEX","LINCOME","BENZ","MER","MITS","NIS","PLY","PON","POR","SAAB","SAT","SUB","TOY","VOLKS","VOLVO")]
barplot(b,labels=lab,main="MANUFAC",xlab="groups",ylab="number")
