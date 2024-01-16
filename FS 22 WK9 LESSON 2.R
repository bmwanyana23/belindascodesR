install.packages("BiocManager")
library(BiocManager)

install.packages("gprofiler2")
library(gprofiler2)
data()

#rcodes within that package
browseVignettes("gprofiler2")

browseVignettes("BiocManager")

BiocManager::install("clusterprofiler",version = "3.12")
BiocManager::install("pathview")
BiocManager::install("enrichplot")
