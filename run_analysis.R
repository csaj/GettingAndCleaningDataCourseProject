library("base")
library("utils")
library("stats")
library("methods")
library("datasets")

if (!file.exists("data")) {
  dir.create("data")
}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/getdata_projectfiles_UCI HAR Dataset.zip", method="curl")
unzip(zipfile = "./data/getdata_projectfiles_UCI HAR Dataset.zip", exdir = "./data")

#1. Merges training and test sets
featureLabels <- read.table("./data/UCI HAR Dataset/features.txt")
featureNames <- featureLabels$V2

trainFeatures <- read.table("./data/UCI HAR Dataset/train/X_train.txt",col.names = featureNames)
trainActivities <- read.table("./data/UCI HAR Dataset/train/y_train.txt",col.names = c("activity"))
trainSubjects <- read.table("./data/UCI HAR Dataset/train/subject_train.txt",col.names = c("subject"))
trainData <- cbind(trainFeatures,trainActivities,trainSubjects)

testFeatures <- read.table("./data/UCI HAR Dataset/test/X_test.txt",col.names = featureNames)
testActivities <- read.table("./data/UCI HAR Dataset/test/y_test.txt",col.names = c("activity"))
testSubjects <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",col.names = c("subject"))
testData <- cbind(testFeatures,testActivities,testSubjects)

mergedData <- rbind(trainData,testData)

#2. Extracts only the measurements on the mean and standard deviation
#extracts only measurements with "mean" or "std" in the column name, and also the activity and subject columns
meanAndStdData <- mergedData[,grepl("mean|std|activity|subject",names(mergedData),ignore.case = TRUE)]

#check if NAs
#sapply(meanAndStdData, function(x) sum(is.na(x)))

#3. Uses descriptive activity names to name the activities
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
meanAndStdData$activity <- factor(meanAndStdData$activity,levels = activityLabels$V1,labels = activityLabels$V2)

#4. Appropriately labels the data set with descriptive variable names. 
names(meanAndStdData) <- gsub("Acc","accelerometer",names(meanAndStdData))
names(meanAndStdData) <- gsub("Gyro","gyroscope",names(meanAndStdData))
names(meanAndStdData) <- gsub("Mag","magnitude",names(meanAndStdData))
names(meanAndStdData) <- gsub("Freq","frequency",names(meanAndStdData))
names(meanAndStdData) <- gsub("std","standarddeviation",names(meanAndStdData))
names(meanAndStdData) <- tolower(gsub("\\.","",names(meanAndStdData)))

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#gets the mean of all variables (activity and subject are in the group by list)
averageData <- aggregate(x = meanAndStdData[,1:86],by = list(activity = meanAndStdData$activity,subject = meanAndStdData$subject),FUN = mean)
#update the measure variable names to reflect that they are all means
names(averageData)[3:88] <- paste0(names(averageData)[3:88],"mean")
write.table(averageData, "./data/averages.txt")



