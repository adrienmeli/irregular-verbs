{
  library("exams")

  myexam <- list.files(path="exercises",pattern = "Rmd$")
  #   myexam <- c("irregular-verbs.Rmd","dnvocabulary.Rmd")
  myexam = paste("exercises/",myexam,sep="")
  folder = unlist(strsplit(getwd(),"/"))
  nameoflesson = folder[length(folder)]

  #exams2moodle(myexam, n = 1, name = sprintf("%s-%s", nameoflesson,format(Sys.time(), "%d-%B-%Y***%H:%M")),
  exams2moodle(myexam, n = 1, name = sprintf("%s-%s", nameoflesson,format(Sys.time(), "%d-%B-%Y")),
	       encoding = "UTF-8",
	       iname = TRUE,
	       stitle = myexam,
	       dir = "xml")
}


