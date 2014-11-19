library(tidyr)

# read in data from the files
train <- read.table("UCI_HAR_Dataset/train/X_train.txt")
 # read in the training data set
test <-read.table("UCI_HAR_Dataset/test/X_test.txt")
 # read in the test data set

features <- read.table("UCI_HAR_Dataset/features.txt", stringsAsFactors =F)
 # read in the features, these are varialble names for the data sets
activity <- read.table("UCI_HAR_Dataset/activity_labels.txt", stringsAsFactors =F)
 # read in the activity table, numeric code ~ activity

test_act <- read.table("UCI_HAR_Dataset/test/y_test.txt")
 # read in the activity codes for the test data set
train_act <- read.table("UCI_HAR_Dataset/train/y_train.txt")
 # read in the activity codes for the training data set

test_subject <- read.table("UCI_HAR_Dataset/test/subject_test.txt")
 # read in the subject for each record in the test data set
train_subject <- read.table("UCI_HAR_Dataset/train/subject_train.txt")
 # read in the subject for each record in the training data set



# 1. Merges the training and the test sets to create one data set.
movedata <- rbind(train, test)
 # merge the two data set
moveact <- rbind(train_act, test_act)
 # merge the activity codes for the two data set
subjects <- rbind(train_subject, test_subject)
 # merge the subject codes for the two data set
rm(train, test, train_act, test_act, train_subject, test_subject)
 # free up memory


# 2. Extracts only the measurements on the mean and standard deviation
# for each measurement. 
feature_ms <- grep("mean|std", features[,2])
 # the index for mean and std records in "features"
movedata <- movedata[,feature_ms]
 # subset movedata to only variables of mean and std


# 3. Uses descriptive activity names to name the activities in the data set
movename <- sapply(moveact[,1], function(x)activity[x,2])
 # vector of activity names for each data record
movedata <- cbind(movename, movedata)
 # add descriptive activity name column as the 1st variable of movedata


# 4. Appropriately labels the data set with descriptive variable names.
feature_names <- features[feature_ms,2]
 # the values or names of the mean and std records in "features"
feature_names <- c("activity", feature_names)
 # add the activity names to the feature names
names(movedata) <- feature_names
 # assign variable names of data set with descriptive feature names


# 5. From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.
movedata <- cbind(subjects, movedata)
names(movedata)[1] <- "subjects"
 # add subject codes as the 1st column of movedata

meandata <- aggregate(. ~ subjects + activity, data=movedata, mean)
 # aggregate data by mean of each activity and each subject

meandata[,2] <- tolower(meandata[,2]) # change to lower case of activity names

# change variable names to tidy form
names(meandata) <- gsub("mean", "Mean", names(meandata))
names(meandata) <- gsub("std", "Std", names(meandata))
names(meandata) <- gsub("[^[:alnum:]]", "", names(meandata)) # remove symbols in names
names(meandata)[3:81] <- paste("mean", names(meandata)[3:81], sep="")

write.table(meandata, file="tidy_meandata.txt", row.names=F, quote=F)

