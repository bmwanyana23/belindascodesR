#exploring graphically genomic data
install.packages(seqinr)
library(seqinr)
library(httpcode)
library(traits)
library(ape)


#getting data from ncbi website
data2=read.GenBank("S80082.1",as.character=TRUE )
data1=ncbi_byid(ids=c("NM_139136.4"),verbose=TRUE)
names(data1)
names(data2)

data3=ncbi_byid(ids = c("NM_001349729.2"),verbose = TRUE)
names(data3)
sapply(data3,class)

#visualize clustering
d=dist(seqdata,method = "euclidean")
fit1=hclust(d,method = "ward.D")
plot(fit1) #dendogram

library(pvclust)
fit2=pvclust(seqdata,method.hclust = "ward.D",method.dist = "euclidean")
fit3=pvclust(seqdata,method.hclust = "average",method.dist = "correlation") #trial error code

plot(fit2)

library(NMF)
library(Biobase)
heatmap(seqdata)

library(pheatmap)
pheatmap(seqdata,distfun=dist)
library(heatmap3)
heatmap3(seqdata)

#number of occurances of dna
count(sequence1)

















