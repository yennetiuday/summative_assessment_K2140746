library(psych)
sales_dataset <- read.csv("https://raw.githubusercontent.com/yennetiuday/files/master/dav/assessment/summative/k2140746.csv")
desc <- describe(sales_dataset)
desc
cor(sales_dataset)
aggregate(cbind(deprivation,logspend,spend) ~ covid, data = sales_dataset, FUN = sum, na.rm = TRUE)
aggregate(cbind(logspend,spend) ~ covid+deprivation, data = sales_dataset, FUN = sum, na.rm = TRUE)
aggregate(cbind(logspend,spend) ~ covid+deprivation, data = sales_dataset, FUN = mean, na.rm = TRUE)
