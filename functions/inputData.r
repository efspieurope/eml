inputData <- function(path = getwd()){

  require(readxl)
  require(dplyr)
  source(paste(path, "/functions/mailmerge.r", sep = ""))
  
  data <- as.data.frame(read_excel(paste(path, "/data/data.xlsx", sep = ""), col_types = NULL))

  # chair with mail 
  data["infomail"] <- mailmerge(data["infoperson"], data["infomail"])

  return(data)
}