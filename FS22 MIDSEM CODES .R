summary(Customer_Data)
head(Customer_Data,3)
names(Customer_Data)
sapply(Customer_Data,class)

#replacing N/A with NA
Customer_Data[Customer_Data=="N/A"]<-NA
colSums(is.na(Customer_Data))

#REPLACING NA WITH 0
Customer_Data[rowSums(is.na(Customer_Data))==0]

#generating a new data set with 3 variables
attach(Customer_Data)
newddata=Customer_Data[c("ed","employ","debtinc")]
summary(newddata)
newddata=data.matrix(newddata)
length(newddata)

#generating bioinformatic data
#generating sequence of characters for the length of newddata
nucl=letters[seq(from=1, to=240)]
nucl2=LETTERS[(1:240%%5>1)+1]
length(nucl2)

#bioinformaticdata
seq_data=data.frame(newddata,nucl2)
summary(seq_data)
head(seq_data, 5)

#genomicdata # T A G C
X<-c("T","A","C","G")
do.call(expand.grid, rep(list(X),3))

#or

#using permutations
library(gtools)
genomicdata <-  c("T", "A", "C", "G")
permutations(4, 3, genomicdata, repeats.allowed = TRUE)

prm<-gtools::permutations(n=10,r=3,v=LETTERS[1:10])


#selecting240 observations
prm_up=apply(prm,1,function(X)paste0(X,collapse = ""))
prm1=prm_up[1:240]

#bioinformatic dataset
bio_data=data.frame(newddata,prm1)
head(bio_data,3)

#trial #explore further
trialdataset<-permutations(4, 3, genomicdata, repeats.allowed = TRUE)
bio_data_trial=data.frame(newddata,trialdataset)


bio_data
head(bio_data,10)

length(bio_data)
length(prm_up)

table(bio_data)


ggplot(bio_data,aes(x=prm1,y=employ))+geom_boxplot(fill="blue")

library(biostat2)
CrossTable(debtinc,employ,prop.t=TRUE, prop.r=TRUE,prop.c=TRUE)

#QEUSTION 
install.packages("seqinr")
library(seqinr)
data("caitab")
summary(caitab)
head(caitab,5)
names(caitab)


#heatmaps
#packagages required
install.packages("heatmap3")
install.packages("pheatmap")
library(heatmap3)
library(pheatmap)

#clustering
d=dist(bio_data,method = "euclidean")
fit=hclust(d,method = "ward.D")
plot(fit)

heatmap(bio_data,scale = "row")

newbiodata=bio_data[1:50, ]
newbiodata
newnumericbiodata=newbiodata[c("ed","employ","prm1")]
heatmap(newnumericbiodata,scale = "none")


d=dist(caitab,method = "euclidean")
fit=hclust(d,method = "ward.D")
plot(fit)
heatmap(caitab,scale = "row")




