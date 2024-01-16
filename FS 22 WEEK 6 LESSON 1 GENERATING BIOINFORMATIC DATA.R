#importing data 
Car_Sales
summary(Car_Sales)
head(Car_Sales, 6)
names(Car_Sales)
sapply(Car_Sales, class)
attach(Car_Sales)

#replacing null with NA
Car_Sales[Car_Sales=="#NULL!"]<-NA
View(Car_Sales)
colSums(is.na(Car_Sales))

#REPLACING NA WITH 0
Car_Sales[rowSums(is.na(Car_Sales))==0]


#generating a new data set with 3 variables - multivariate data
newdata=Car_Sales[c("price","sales","fuel_cap")]
newdata=data.matrix(newdata)

length(newdata)

#GENERATING BIOINFORMATIC DATA

#generating sequence of characters for the length of NEWDATA
nucle=letters[seq(from=1, to=156)]

nu2=LETTERS[(1:156%%5>1)+1]
length(nu2)


#BIOINFORMATIC DATA
seq_data=data.frame(newdata,nu2)



#vector c("T", "A", "C", "G") for genomic data
x <- c("T", "A", "C", "G")
do.call(expand.grid, rep(list(x), 3))

#using permutations
library(gtools)
data <-  c("T", "A", "C", "G")
permutations(4, 3, data, repeats.allowed = TRUE)


#combinations
# generating combinations of the 
# alphabets taking 2 at a time
library(combinat)
combn(letters[1:4], 2)


#letters from 1(a) to 10(j)

prm <- gtools::permutations(n=10, r=3, v=LETTERS[1:10])
#selecting 351 observations
prm_up=apply(prm, 1, function(x)paste0(x, collapse=''))
prm_1=prm_up[1:156]


#bioinformatics data
bio_data=data.frame(newdata,prm_1)
head(bio_data,3)

#apply DNA Sequencing Statistics
#length
length(bio_data)
length(prm_up)

table(prm_up)

GC(prm_up)




library(dplyr)
count(prm_up, 1)


count(prm_up, 2)

bio_data

#*****
gc(reset = TRUE)