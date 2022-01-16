
library(readxl)
LungCapData <- read_excel("E:/DS/six_month/3rd R/Marinstat R/LungCapData.xlsx", 
                          sheet = "Sheet1")
View(LungCapData)



# another data set reading with selected sheet and range
library(readxl)
LungCapData2 <- read_excel("E:/DS/six_month/3rd R/Marinstat R/LungCapData.xlsx", 
                          sheet = "Sheet1", range = "C5:G20")
View(LungCapData)