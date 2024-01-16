source("https://bioconductor.org/install")

install.packages("BiocManager", version = "3.16")


library(BiocManager)

BiocManager::install("clusterProfiler")
BiocManager::install("clusterProfiler")

BiocManager::install("clusterProfiler",version = "3.16") #not working

library(clusterProfiler)
library(DOSE)
data(geneList)
gene <- names(geneList)[abs(geneList) > 2]
library(org.Hs.eg.db)

# Entrez gene ID
head(gene)

#gene classifiaction based on GO distribution
ggo <- groupGO(gene     = gene,
               OrgDb    = org.Hs.eg.db,
               ont      = "CC",
               level    = 3,
               readable = TRUE)
head(ggo)

#GO overrepresentation
ego <- enrichGO(gene          = gene,
                universe      = names(geneList),
                OrgDb         = org.Hs.eg.db,
                ont           = "CC",
                pAdjustMethod = "BH",
                pvalueCutoff  = 0.01,
                qvalueCutoff  = 0.05,
                readable      = TRUE)
head(ego)

#GO Gene Set Enrichment Analysis
ego3 <- gseGO(geneList     = geneList,
              OrgDb        = org.Hs.eg.db,
              ont          = "CC",
              minGSSize    = 100,
              maxGSSize    = 500,
              pvalueCutoff = 0.05,
              verbose      = FALSE)

#KEGG Pathway overrepresentation analysis
data(geneList, package="DOSE")
gene <- names(geneList)[abs(geneList) > 2]

kk <- enrichKEGG(gene         = gene,
                 organism     = 'hsa',
                 pvalueCutoff = 0.05)
head(kk)
