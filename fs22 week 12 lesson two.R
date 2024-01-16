#LOADING REQUIRED PACKAGES
library(seqinr)
library(httpcode)
library(traits)
library(ape)

#DOWNLOADING DATA FROM NCBI WEBSITE
data=ncbi_byid(ids = c("NM_001349729.2"),verbose = TRUE)
names(data)
sapply(data,class)
data

#load r packages reqiured for enrichment analysis
BiocManager::install("clusterProfiler",version = "3.16")
BiocManager::install("pathview")
BiocManager::install("enrichplot")

BiocManager::library("clusterprofiler") #trialnaderror
table(data)

#GETTING edgeR from the internet directly since it is not in R
source("https://bioconductor.org/biocLite.R")
biocLite("edgeR") ##REFUSED TO WORK

#option 2
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager"
                   BiocManager::install("edgeR")
                   #option 3
source(('https://bioconductor.org/biocLite.R'), biocLite("edgeR", type="binary"))
library("edgeR")
dge<-DGEList(assay(data), group=data$taxonomy)  
                   
#visualizing
library("enrichplot")
                   
#enrichment analysis
enrichGO(data)
enrichKEGG(data) 
                   
#barplot using
barplot(data)
barplot(data$length)
                   
#dotplot using 
dotplot(data)
                   
#emaplot using 
emapplot(data)
                   
#heatmap using 
heatplot(data)
                   
                   