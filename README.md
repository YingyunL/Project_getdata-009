Project_getdata-009
===================

Getting and Cleaning Data Course Project


The original data and its descripton for this project was obtained from this location:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

A direct link to the original data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

How the script works:

The included run_analysis.R file is a script that extracts a set of tidy data from the original data. For this script to work, the original data zip file should be unzipped in the current folder (the folder with the script file), and the data folder should be renamed "UCI_HAR_Dataset". 

The script uses the "tidyr" package. This is loaded at the beginning.

The firsts block of the script read in the necessary files and store the data in variables. 

1. Read in the training data set from UCI_HAR_Dataset/train/X_train.txt and store it in "train".

2. Read in the test data set from UCI_HAR_Dataset/test/X_est.txt and store it in "test".

3. Read in the features as varialble names for the data sets from UCI_HAR_Dataset/features.txt, and store it in "features".

4. Read in the activity table (numeric code ~ activity) from UCI_HAR_Dataset/activity_labels.txt, and store it in "activity".

5. Read in the activity codes for the test data set from "UCI_HAR_Dataset/test/y_test.txt", and store it in "test_act".

6. Read in the activity codes for the training data set from "UCI_HAR_Dataset/train/y_train.txt", and store it in "train_act".

7. Read in the subject for each record in the test data set from "UCI_HAR_Dataset/test/subject_test.txt", and store it in "test_subject".

8. Read in the subject for each record in the training data set from "UCI_HAR_Dataset/train/subject_train.txt", and store it in "train_subject". 

The #1 block of the script merges the training and the test sets to create one data set.

1. Datasets "train" and "test" were combined to make "movedata"".

2. Activity codes "train_act" and "test_act" were combined to make "moveact".

3. Subject codes "train_subject" and "test_subject" were combined to make "subjects".

4. Variables not useful anymore are removed from memory.

The #2 block of the script extracts only the measurements on the mean and standard deviation for each measurement. Features containing "mean" or "std" were first searched from "features". The returned indexes are stored in "feature_ms". This was then used to sebset "movedata" to obtain only the measurements on the mean and standard deviation for each measurement. 

The #3 block of the script uses descriptive activity names to name the activities in the data set. The activity for each data record was previously stored as an integer code in "moveact", with the code book in the "activity" variable. The activity names for each record were extracted from these two variables, and stored in "movename". This vector of activity names is then combined into the dataset as the first column.

The #4 block of the script appropriately labels the data set with descriptive variable names. The values or names of the mean and std records in "features" are extracted using the index in "feature_ms", and stored in "feature_names". Together with "activity", this vector is assigned to the column names of the dataset "movedata". 

The #5 block of the script added the subject codes to the data set as the first column, and then calculated the average of each variable for each activity and each subject using the aggregate function. The average values are stored in the data set "meandata". 

To conform to tidy data standard, the activity names in meandata is changed to lower case. The variable names were rid of punctuation characters and added the word "mean" to the beginning of each variable to denote the averaging of these variables. The final data frame "meandata" was written to the file named "tidy_meandata.txt". 






