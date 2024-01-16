install.packages("BiocManager", version = "3.16")
library(BiocManager)

BiocManager::install("TCGAbiolinks")
library(TCGAbiolinks)

BiocManager::install("IlluminaHumanMethylation450kanno.ilmn12.hg19")
library(IlluminaHumanMethylation450kanno.ilmn12.hg19)

BiocManager::install("IlluminaHumanMethylation450kmanifest")
library(IlluminaHumanMethylation450kmanifest)

BiocManager::install("minfi")
library(minfi)

BiocManager::install("limma")
library(limma)

BiocManager::install("missMethyl")
library(missMethyl)

BiocManager::install("DMRcate")
library(DMRcate)

BiocManager::install("Gviz")
library(Gviz)

BiocManager::install("RColorBrewer")
library(RColorBrewer)

library(ggplot2)

library(edgeR)
