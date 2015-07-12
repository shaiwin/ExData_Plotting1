# set working directory using setwd() (~ represents root)
setwd("~/Data Science Specialization/Exploratory Data Analysis")

# check to see plots folder exists
if (!file.exists('plots')) {
  dir.create('plots')
}

# load data to cleanse and filter data
source('getandcleandata.R')

# this command opens device
png(filename='plots/plot1.png',width=480,height=480,units='px')

# this command plots data
hist(power.consumption$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# this cmd is to turn off device
x<-dev.off()
