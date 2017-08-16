# Coursera_Data Science: Exploratory Data Analysis
# Week1_Course project 1: Making plots
# Pedro Ramon Almeida Oiticica
###################################################################################################

# Makeing Plots

setwd("C:/Users/praoi/Documents/Coursera/Exploratoty Analysis/quiz 1/MyProject1")
Sys.setlocale("LC_TIME","English") # Get weekdays in English

source("Download_Unzip.R")

# Read, convert to data.frame ans subset the desired observations.
# Set strinfasFactors=F to avoid Date characters variable to be converted to Factor.
DF <- read.csv("./rawData/household_power_consumption.txt", header=T, sep=';', na.strings="?",
               stringsAsFactors=F)
subDF <- subset(DF,Date %in% c("1/2/2007", "2/2/2007"))

# Convertins Dates and times

subDF$DateTime <- paste(subDF$Date, subDF$Time) 
# "1/2/2007 00:00:00" "1/2/2007 00:01:00"...
subDF$DateTime <- as.POSIXct(subDF$DateTime, tz = "GMT",format = "%d/%m/%Y %H:%M:%S")
# "2007-02-01 00:00:00 GMT" "2007-02-01 00:01:00 GMT" ...
subDF$Date <- as.Date(subDF$Date, format = ("%d/%m/%Y"))
# "2007-02-01" "2007-02-01" "2007-02-01"...

######################################################
# Combine Date and Time column, convert it into the object of class "POSIXlt" and save it as the variable named Datetime

#subDF$DateTime<-paste(subDF$Date,subDF$Time)
#### "1/2/2007 00:00:00" "1/2/2007 00:01:00"...
#subDF$DateTime<-strptime(subDF$DateTime,format = "%d/%m/%Y %H:%M:%S")
### Character input is first converted to class "POSIXlt" by strptime.
### Any conversion that needs to go between the two date-time classes requires a time zone
### conversion from "POSIXlt" to "POSIXct" will validate times in the selected time zone.
########################################################
  

# Make plots.
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

#rm(list=ls())
