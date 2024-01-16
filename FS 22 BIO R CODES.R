#Actual work

library(BiocManager)
 BiocManager: :install("clusterProfiler")
BiocManager:: install("pathview")
BiocManager:: install("enrichplot")
BiocManager: :install("airway")
library(clusterProfiler)
library(enrichplot)

BiocManager:: install("edgeR")
 library(orq.Hs.eg.db)
library(DOSE)
 BiocManager:: install("affy")
 library(affy)
BiocManager: : install("EMA", version="3.16")#did not run
library(EMA)#error

BiocManager: : install("GEOquery")
library(GEOquery)

BiocManager: : install("oligo")
library(oligo)

#Run
library(seqinr)
library(ape)
library(DOSE)