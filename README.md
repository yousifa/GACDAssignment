Getting and Cleaning Data Assignment
====
##This repo includes:
###run_analysis.R
Script to analyze data set
###CodeBook.md
Explanation on how to interpret the data
###README.md
Instructions for the script

##Instructions
* Download the data from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* Unzip the file and move the contents of "UCI HAR Dataset" into the folder in which "run_analysis.R" resides
* Change working directory of R to the folder in which the data and "run_analysis.R" reside
* Execute: source("run_analysis.R")
* This will produce two files: "tidyData.txt" and "tidyData2.txt"
* "tidyData.txt": Data set with only the mean and standard deviations for each measurement
* "tidyData2.txt": Data set with the average of each variable for each activity and each subject