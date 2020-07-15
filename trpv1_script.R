#read the input data
Trpv1_data <- read.csv("/home/russellb/Desktop/unix/trpv1.tsv", sep="\t")

#extract the low quality associations with <0.5 
trpv1_lowqual <- subset(Trpv1_data, X0.999 < 0.5)

#extract the first two and the last column
trpv1_lowqual_small<- trpv1_lowqual[,c(1,2,15)]

#write the filtered interactions in to a file
write.table(trpv1_lowqual_small, "trpv1_lowqual_small.txt", sep = "\t", quote = FALSE, row.names = FALSE)
