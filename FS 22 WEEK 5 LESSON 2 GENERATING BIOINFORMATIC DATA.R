library(seqinr)
data("ECH")
data("EXP")
data("SEQINR.UTIL")
data("caitab")
data("gs500liz")

#making carsales bioinformatic, sequential. 
sapply(Car_Sales,class)
Car_Sales[Car_Sales=="#NULL!"]<-NA

colSums(is.na(Car_Sales))
seqcarsales=Car_Sales[c("sales","price","engine_s","width")]
names(seqcarsales)

#GOOGLE SEQUENCING OF ORDERED LETTERS IN R