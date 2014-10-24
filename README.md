Project_getdata-008
===================

Getting and Cleaning Data Course Project, data manipulation


The original data and its descripton for this project was obtained from this location:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

A direct link to the original data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

How the script works.

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

The second block of the script merges the training and the test sets to create one data set.
1. Datasets "train" and "test" were combined to make "movedata"".
2. Activity codes "train_act" and "test_act" were combined to make "moveact".
3. Subject codes "train_subject" and "test_subject" were combined to make "subjects".
4. Variables not useful anymore are removed from memory.

The third block of the script extracts only the measurements on the mean and standard deviation for each measurement. Features containing "mean" or "std" were first searched from "features". The returned indexes are stored in "feature_ms". This was then used to sebset "movedata" to obtain only the measurements on the mean and standard deviation for each measurement. 

The fourth block of the script uses descriptive activity names to name the activities in the data set. The activity for each data record was previously stored as an integer code in "moveact", with the code book in the "activity" variable. The activity names for each record were extracted from these two variables, and stored in "movename". This vector of activity names is then combined into the dataset as the first column.

The fifth block of the script labels the data set appropriately with descriptive variable names. The values or names of the mean and std records in "features" are extracted using the index in "feature_ms", and stored in "feature_names". Together with "activity names", this vector is assigned to the column names of the dataset "movedata". 

The last block of code in the script creates a second, independent tidy data set with the average of each variable for each activity and each subject in "movedata". To do this, the "subjects" vector was first combined into the dataset as the first column, and the column name was changed accordingly. The dataset "movedata" was then split into a list of data frames according to levels in the first two columns, namely subject and activity. The column means for each of these smaller data sets (without the first two columns of names and activity) were calculated and stored in a matrix named "meandata". This matrix was transposed to the original row-column format and turned into a data frame with the same name. 

The data frame "meandata" was tidied up by adding subject and activity as the first two columns. This information was stored in the row names of the data frame. The row names were first added to the data frame as the first column, and then this column was separated into two columns using the "tidyr" function "separate()". The original row names were replaced with numbers for tidiness. The finished data frame was written to the file named "tidy_meandata.txt". 




