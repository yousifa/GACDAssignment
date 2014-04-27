Getting and Cleaning Data Assignment: CodeBook
====
##What this script does:
*Sources data from:
     "test\subject_test.txt"
     "test\X_test.txt"
     "test\y_test.txt"
     "train\subject_train.txt"
     "train\X_train.txt"
     "train\y_train.txt"
*Merges data sets into a single data set
*Extracts the mean and standard deviations
*Sets meaningful names and labels to the data set
*Merges and exports a tidy dataset with the mean and standard deviations
*Merges and exports a tidy dataset with the average of each variable for each activity and each subject 
##Variables
*Variables included in the data set are the mean and standard deviation for:
     tBodyAcc-XYZ
     tGravityAcc-XYZ
     tBodyAccJerk-XYZ
     tBodyGyro-XYZ
     tBodyGyroJerk-XYZ
     tBodyAccMag
     tGravityAccMag
     tBodyAccJerkMag
     tBodyGyroMag
     tBodyGyroJerkMag
     fBodyAcc-XYZ
     fBodyAccJerk-XYZ
     fBodyGyro-XYZ
     fBodyAccMag
     fBodyAccJerkMag
     fBodyGyroMag
     fBodyGyroJerkMag
     
In addition, the Activity and Subjects are included

##Instructions
* Download the data from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* Unzip the file and move the contents of "UCI HAR Dataset" into the folder in which "run_analysis.R" resides
* Change working directory of R to the folder in which the data and "run_analysis.R" reside
* Execute: source("run_analysis.R")
* This will produce two files: "tidyData.txt" and "tidyData2.txt"
* "tidyData.txt": Data set with only the mean and standard deviations for each measurement
* "tidyData2.txt": Data set with the average of each variable for each activity and each subject
