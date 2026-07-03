mailmerge <- function(person, mail){
  res <- paste("For feedback and questions send an email to [", person, "](mailto:", mail, ")", sep = "")
  return(res)
}