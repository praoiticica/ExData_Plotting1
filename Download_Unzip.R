# Defining the URL a da folder names of the repository.
dir<-"rawData"
filedir<-file.path(dir, "rawData.zip")
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if(!file.exists(dir))
  dir.create(dir, recursive = TRUE) else{
  print("The data folter already exists!")}

## Download and unzip the raw dataset.

if(!file.exists(filedir) & !file.exists(file.path(dir, "household_power_consumption.txt"))) {

  download.file(fileUrl,filedir , mode = "wb")
  unzip(filedir, exdir = dir)
}else{
  print("The file is already download and unziped!")
}
cat("The file \"household_power_consumption.txt\" was downloaded and unziped to the \"./rawData\" direcrory!")