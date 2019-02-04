rm(list=ls())
load("Scripts/testData.RData")



idx.tumor <- which(data.group=="Tumor")
idx.normal <- which(data.group=="Brain")
data.counts <- as.matrix(data.counts)
idx.0 <- which(apply(data.counts, 1, sum)==0)

data.subset <- data.counts[-idx.0, ]
hist(data.subset[1:10, idx.tumor], n=100)
hist(data.subset[1:10, idx.normal], n=100)





#load("../DE/mast_data.Rdata")
