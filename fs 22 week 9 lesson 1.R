#HEAT MAPS
#SELECTING 30MOBSERVATIONS FROM BIOINFORMATI DATA
#READING: FUNCTIONAL ENRICHMENT ANALYSIS IN R AND ANA;AYZING MICROARRAY DATA IN R 


#SELECTING THREE VARIABLES
threedataset=Customer_Data[c("age","income")]
threedataset

install.packages("NMF")

install.packages("heatmaps")

library(NMF)
library(heatmaps)
library(pheatmap)

heatmaps(threedataset)
pheatmaps(threedataset)


pheatmap(threedataset)
heatmap(threedataset)

#generate a sequence
#add it to new data
#generate heatmap



#selecting thirty observations
observations=threedataset(c[1:30], )
