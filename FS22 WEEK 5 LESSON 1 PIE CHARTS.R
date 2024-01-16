#BST4060 BIOINFORMATICS
#WEEK 2 CLASS
#Importing data :Eg. Genome sequence data

yeView(GenomeData)
library(seqinr)
View(DNase)
data2<-DNase
install.packages("seqinr")
library(seqinr)
1<-data("fasta")
view(1)


#Week 2.2
#Set working directory 
library(ggplot2)
data(diamonds)
head(diamonds,2,3)
head(diamonds,3)
attach(diamonds)

summary(diamonds)
sapply(diamonds,class)
# view 3 columns for diamond data head
head(diamonds,3)
#confirm if variable selected are numeric
newdata=diamonds[c("carat","depth","table","x","y","z")]
newdata 
sapply(newdata,class)
#use apply to select a given row
apply(newdata,MARGIN = 2,sum)
apply(newdata,MARGIN = 1,sum)
selecting10observations
data_10=newdata[1:10,] 
data_10
apply(data_10,MARGIN=2,sum)
apply(data_10,MARGIN=1,sum)
lapply(newdata,sum)
lapply(newdata,mean)
#mapply used to apply a function to multiply list or vector arguments
l#Grouped plots
par(mfrow=c(3,4))
hist(diamonds$carat,  xlab="Carat", main = "Carat Histogram")
hist(diamonds$price,  xlab="Price",  main = "Price Histogram")
hist(diamonds$depth,  xlab="depth",  main = "Depth Histogram")
hist(diamonds$table,  xlab="table",  main = "Table Histogram")
plot(diamonds$price, diamonds$depth, xlab="Price", ylab = "Depth", main = "Price vs Depth")
boxplot(diamonds$table, main="Table boxplot")
boxplot(diamonds$price, main="Depth price")
#ASSESS MISSING DATA
is.na(diamonds)
#use missing plots
library(finalfit)
diamonds%>%
  missing_plot()
#SCATTER PLOT FOR PRICE AND DEPTH
plot(diamonds$price,diamonds$depth)
#multiple scatterplots on one graph
par(mfrow=c(2,2))#2*2 MATRIX PLOT
plot(diamonds$price,diamonds$depth)
plot(diamonds$carat,diamonds$depth)
plot(diamonds$table,diamonds$price)
plot(diamonds$x,diamonds$y)
library(ggplot2)
library(gridExtra)
library(cowplot)
ggplot(diamonds,aes(x=price,y=depth,color=(cut))
       geom_point()
       
       ggplot(data = diamonds, aes(x=price,y=depth,color=cut))+geom_point()    
       #simple boxplot
       boxplot(diamonds$price)
       #MULTIPLE BOXPLOT
       data_num=
         boxplot(newdata)
       #correlation and clustering
       #barplot
       barplot()
       #graphical display for categorical data- pie or barplot
       #PIE CHART
       
       table(cut)
       
       x=c(10,20,30)
       lab=c("carot","cut","numeric")
       pie(x,labels=lab,main="distribution of cut")
       #3D pie chart/
       library(plotrix)
       pie3D(X,labels=lab,explode=0 1,main =cut"cut distribution")
       #barplot
       barplot(x,labels=lab,main="cut distribution",xlab="groups",ylab="number")
       #clustering
       d=dist(newdata,method="euclidean")
       fit=hclust(d,method="ward.D")
       plot(fit)
       heatmap()
       library(NMF)