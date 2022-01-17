Subject <- c("DAve.Andreychuk","Jon.Stewart","Jane.Doe")
Age <- c(53,54,38)
Gender <- c("male","male","female")
Score <- c(80.5,52.1,75.9)

DataToExport <- data.frame(Subject,Age,Gender,Score)
DataToExport


# exporting
write.table(DataToExport,file="ExportData.csv",row.names = F,sep=",")


# in other directory
#write.table(DataToExport,file="E:\DS\six_month\3rd R\Marinstat R>DataToExport.csv",row.names=F,sep="c")


write.csv(DataToExport,file = "DataToExport.csv",row.names=F)
write.table(DataToExport,file="NameOfFile.extension",row.names = FALSE,sep=" ")

# also same for the txt use .txt and sep = "\t" in write.table

