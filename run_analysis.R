###
### Process and create a tidy dataset from the UCI HAR dataset 
###
### Peer review assignment for "Getting and Cleaning Data" offered by JHU 
### through Coursera
###

# Data obtained through the course website from:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# The original site is here:
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# 
# For the purpose of this analysis, this script assumes you've already 
# downloaded and unzipped the data files in your working directory. 

# Load and combine training sets
trainX <- read.csv("train/X_train.txt", sep = "", header = FALSE)
trainY <- read.csv("train/y_train.txt", sep = "", header = FALSE)
trainSubject <- read.csv("train/subject_train.txt", sep = " ", header = FALSE)
trainSet <- cbind(trainX, trainY, trainSubject)

# Load and combine test sets
testX <- read.csv("test/X_test.txt", sep = "", header = FALSE)
testY <- read.csv("test/y_test.txt", sep = "", header = FALSE)
testSubject <- read.csv("test/subject_test.txt", sep = " ", header = FALSE)
testSet <- cbind(testX, testY, testSubject)

## 1. Merge the training and test sets to create one data set
combined <- rbind(trainSet, testSet)

## 2. Extract the measurements on the mean and standard deviation for each 
## measurement
## and
## 4. Label the data set with descriptive variable names

# features.txt will let us filter for mean and std measurements
features <- read.csv("features.txt", sep = " ", header = FALSE)
meanAndStdFeatures <- grep("-(mean|std)\\(\\)", features[, 2])
filtered <- combined[, meanAndStdFeatures]

# put back the activity class values and subject information, add names
allData <- cbind(filtered, combined[c(ncol(combined)-1, ncol(combined))])
names(allData) <- c(featureNames, "activity", "subject")

## 3. Give descriptive activity names to name the activities in the data set

# Use activity_labels.txt to label activities
activities <- read.csv("activity_labels.txt", sep = " ", header = FALSE, col.names=c("id", "name"))
for (i in 1:nrow(activities)) {
    #allData[allData$activity == activities[i, "id"]] <- as.character(activities[i, "name"])
    allData$activity[allData$activity == i] <- as.character(activities[i, "name"])
}

## 5. Create a second, independent tidy data set with the average of each variable
## for each activity and each subject

averages <- ddply(allData, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(averages, "tidyAverages.txt", row.name=FALSE)