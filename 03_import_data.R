# first take help
#help("read.csv")
# read a csv
df <- read.csv(file.choose(),header = T)
df

# read table
df2 <- read.table(file.choose(),header = T,sep=",")
df2


# reading a txt file
df3 <- read.delim(file.choose(),header=T)
df3
# silimar
df4 <- read.table(file.choose(),header=T,sep="\t")
df4
