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
BiocManager::install("clusterprofiler",version = "3.12")
BiocManager::install("pathview")
BiocManager::install("enrichplot")



#perform DE analysis
library("edgeR")

#ANNOTATE THE GENE LIST AND THE GENE UNIVERSE TO PERFOMR FUNCTIONAL ENRICHMENT


#USE enrichGO() AND enrichKEGG() TO PERORM ENRICHMENT ANLYSIS


#VISUALIZE ENRICHMENT USING LIBRARY(enrichplot)

#barplot using barplot()

#dotplot using dotplot()

#emaplot usimg emaplot()

#heatmap using heatplot()