names(Customer_Data)
sapply(Customer_Data, class)

#SELECTING 2 VARIABLES OF INTEREST
newdata=Customer_Data[c("age","gender")] #not a must for data to be numeric

#LENGTH OF VARIABLE
length(Customer_Data$age)

#GENERATE A SEQUENCE BASED ON THE LENGTH OF DATA
sequence1=LETTERS[(1:80%%5>1)+1]

#PRACTICING THE CODE
practicesequence=letters[(1:80%%5>1)+2]
practicesequence=letters[(1:80%%5>1)+3]
practicesequence=letters[(1:80%%5>1)+4]
practicesequence=letters[(1:80%%5>2)+2]
practicesequence=letters[(1:80%%5>4)+2]

sequenceddata=data.frame(newdata,sequence1)

#GETTING A SEQUENCE OF ANY THREE LETTERS REPEATING ANYTIME USING LERMUTATIONS
prm=gtools::permutations(n=10,r=4,v=LETTERS[1:10])
prm1=apply(prm, 1, function(x)paste0(x, collapse=''))
prm2=prm1[1:80]
seqdata=data.frame(newdata,prm2)


#IMPORTING SEQUENCE DTA FROM NCBI DATABASE
library(seqinr)
#OR
library(traits)

#getting data directly from ncbi using THE CODE FROM THE WEBSITE
data1=ncbi_byid(ids=c("NM_139136.4"),verbose=TRUE)

#OR
library(ape)
data=read.GenBank("NM_139136.4")
data

#changing data to character
as.character=TRUE
data2=read.GenBank("S80082.1",as.character=TRUE )
data2[["S80082.1"]]
table(data2)

