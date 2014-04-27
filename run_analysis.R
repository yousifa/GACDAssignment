## run_analysis.R
##
library(data.table)

## Merge data sets into a single data set

subject <- rbind(read.table("test/subject_test.txt"), read.table("train/subject_train.txt"))
x <- rbind(read.table("test/X_test.txt"), read.table("train/X_train.txt"))
y <- rbind(read.table("test/y_test.txt"), read.table("train/y_train.txt"))

## Extract mean and std deviation
##
# Read features.txt to variable
feat <- read.table("features.txt")

# find mean and standard deviation locations in features by looking for "mean(" or "std("
features <-grep("mean\\(|std\\(", feat[,2])

# Use only selected features
x <-x[,features]

# Sets meaningful names
names(x) <- feat[features,2]

# Remove () from names
names(x) <- gsub("\\(\\)","",names(x))

## Name and label activities
##
# Read in activity labels file
activityLabels <- read.table("activity_labels.txt")

# Make activities human readable
activityLabels[,2] <- gsub("_"," ", activityLabels[,2])

# Set activity names to data set
y[,1] <- activityLabels[y[,1],2]

# Set labels
names(y) <- "Activity"
names(subject) <- "Subject"

## Merge and export tidy dataset
tidyData <- cbind(subject, y, x)
write.table(tidyData, "tidyData.txt")

## Second tidy data set (averages)
tidyDataTable <- data.table(tidyData)
result <- tidyDataTable[,lapply(.SD,mean),by="Subject,Activity"]
write.table(result,"tidyData2.txt")