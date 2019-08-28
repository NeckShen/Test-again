## 2019-08-28 git training

########
# daa preprocessing
########
test.dd = read.table(choose.files(),sep=" ",header=F,stringsAsFactors=F)
# test.test = read.table(choose.files(),sep=",",header=F,stringsAsFactors=F,skip=1)
cln = read.table(choose.files(),sep="\t",header=T,stringsAsFactors=F)
colnames(test.dd) = colnames(cln)
# colnames(test.test) = colnames(cln)
write.table(test.dd,"D:/For SPSS PPT/data set/automobile/automobile.txt",sep="\t",
            col.names=T,row.names=F,quote=F)
# write.table(test.test,"D:/For SPSS PPT/data set/adult/adult.test.txt",sep="\t",
#             col.names=T,row.names=F,quote=F)

######## stat from here ########
rm(list=ls(all=TRUE))
Ifsys = "D:/RStudioProject/SPSS/"

dd = read.table(paste(Ifsys,"auto-mpg.txt",sep=""),sep="\t",header=T,stringsAsFactors=F)
# adult.test = read.table(paste(Ifsys,"adult.test.txt",sep=""),sep="\t",header=T,stringsAsFactors=F)

head(dd)
dd[dd == "?"] = NA
head(dd)
dim(dd)
