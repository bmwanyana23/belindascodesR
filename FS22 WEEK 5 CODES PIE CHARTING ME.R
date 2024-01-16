pie(x,labels=lab,main="DISTRIBUTION OF VARIABLE")
#3D PIE CHART
install.packages("plotrix")
pie3D(X,labels=lab,explode=0.1,main="CUT DISC")
#barplot
barplot(x,labels=lab,main="cut distribution",xlab="groups",ylab="number")
#clustering
d=dist(newdata,method="euclidean")
fit=hclust(d,method="ward.D")
plot(fit)