Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

The data set in the tidy_meandata.txt file contains 81 columns. The variable names of these columns are listed below followed by their corresponding features from which the average values are obtained for columns 3-81. 

			meandata_variable			featureNames
1			subjects				subjects
2			activity				activity
3			meantBodyAccMeanX			tBodyAcc-mean()-X
4			meantBodyAccMeanY			tBodyAcc-mean()-Y
5			meantBodyAccMeanZ			tBodyAcc-mean()-Z
6			meantBodyAccStdX			tBodyAcc-std()-X
7			meantBodyAccStdY			tBodyAcc-std()-Y
8			meantBodyAccStdZ			tBodyAcc-std()-Z
9			meantGravityAccMeanX			tGravityAcc-mean()-X
10			meantGravityAccMeanY			tGravityAcc-mean()-Y
11			meantGravityAccMeanZ			tGravityAcc-mean()-Z
12			meantGravityAccStdX			tGravityAcc-std()-X
13			meantGravityAccStdY			tGravityAcc-std()-Y
14			meantGravityAccStdZ			tGravityAcc-std()-Z
15			meantBodyAccJerkMeanX			tBodyAccJerk-mean()-X
16			meantBodyAccJerkMeanY			tBodyAccJerk-mean()-Y
17			meantBodyAccJerkMeanZ			tBodyAccJerk-mean()-Z
18			meantBodyAccJerkStdX			tBodyAccJerk-std()-X
19			meantBodyAccJerkStdY			tBodyAccJerk-std()-Y
20			meantBodyAccJerkStdZ			tBodyAccJerk-std()-Z
21			meantBodyGyroMeanX			tBodyGyro-mean()-X
22			meantBodyGyroMeanY			tBodyGyro-mean()-Y
23			meantBodyGyroMeanZ			tBodyGyro-mean()-Z
24			meantBodyGyroStdX			tBodyGyro-std()-X
25			meantBodyGyroStdY			tBodyGyro-std()-Y
26			meantBodyGyroStdZ			tBodyGyro-std()-Z
27			meantBodyGyroJerkMeanX			tBodyGyroJerk-mean()-X
28			meantBodyGyroJerkMeanY			tBodyGyroJerk-mean()-Y
29			meantBodyGyroJerkMeanZ			tBodyGyroJerk-mean()-Z
30			meantBodyGyroJerkStdX			tBodyGyroJerk-std()-X
31			meantBodyGyroJerkStdY			tBodyGyroJerk-std()-Y
32			meantBodyGyroJerkStdZ			tBodyGyroJerk-std()-Z
33			meantBodyAccMagMean			tBodyAccMag-mean()
34			meantBodyAccMagStd			tBodyAccMag-std()
35			meantGravityAccMagMean			tGravityAccMag-mean()
36			meantGravityAccMagStd			tGravityAccMag-std()
37			meantBodyAccJerkMagMean			tBodyAccJerkMag-mean()
38			meantBodyAccJerkMagStd			tBodyAccJerkMag-std()
39			meantBodyGyroMagMean			tBodyGyroMag-mean()
40			meantBodyGyroMagStd			tBodyGyroMag-std()
41			meantBodyGyroJerkMagMean		tBodyGyroJerkMag-mean()
42			meantBodyGyroJerkMagStd			tBodyGyroJerkMag-std()
43			meanfBodyAccMeanX			fBodyAcc-mean()-X
44			meanfBodyAccMeanY			fBodyAcc-mean()-Y
45			meanfBodyAccMeanZ			fBodyAcc-mean()-Z
46			meanfBodyAccStdX			fBodyAcc-std()-X
47			meanfBodyAccStdY			fBodyAcc-std()-Y
48			meanfBodyAccStdZ			fBodyAcc-std()-Z
49			meanfBodyAccMeanFreqX			fBodyAcc-meanFreq()-X
50			meanfBodyAccMeanFreqY			fBodyAcc-meanFreq()-Y
51			meanfBodyAccMeanFreqZ			fBodyAcc-meanFreq()-Z
52			meanfBodyAccJerkMeanX			fBodyAccJerk-mean()-X
53			meanfBodyAccJerkMeanY			fBodyAccJerk-mean()-Y
54			meanfBodyAccJerkMeanZ			fBodyAccJerk-mean()-Z
55			meanfBodyAccJerkStdX			fBodyAccJerk-std()-X
56			meanfBodyAccJerkStdY			fBodyAccJerk-std()-Y
57			meanfBodyAccJerkStdZ			fBodyAccJerk-std()-Z
58			meanfBodyAccJerkMeanFreqX		fBodyAccJerk-meanFreq()-X
59			meanfBodyAccJerkMeanFreqY		fBodyAccJerk-meanFreq()-Y
60			meanfBodyAccJerkMeanFreqZ		fBodyAccJerk-meanFreq()-Z
61			meanfBodyGyroMeanX			fBodyGyro-mean()-X
62			meanfBodyGyroMeanY			fBodyGyro-mean()-Y
63			meanfBodyGyroMeanZ			fBodyGyro-mean()-Z
64			meanfBodyGyroStdX			fBodyGyro-std()-X
65			meanfBodyGyroStdY			fBodyGyro-std()-Y
66			meanfBodyGyroStdZ			fBodyGyro-std()-Z
67			meanfBodyGyroMeanFreqX			fBodyGyro-meanFreq()-X
68			meanfBodyGyroMeanFreqY			fBodyGyro-meanFreq()-Y
69			meanfBodyGyroMeanFreqZ			fBodyGyro-meanFreq()-Z
70			meanfBodyAccMagMean			fBodyAccMag-mean()
71			meanfBodyAccMagStd			fBodyAccMag-std()
72			meanfBodyAccMagMeanFreq			fBodyAccMag-meanFreq()
73			meanfBodyBodyAccJerkMagMean		fBodyBodyAccJerkMag-mean()
74			meanfBodyBodyAccJerkMagStd		fBodyBodyAccJerkMag-std()
75			meanfBodyBodyAccJerkMagMeanFreq		fBodyBodyAccJerkMag-meanFreq()
76			meanfBodyBodyGyroMagMean		fBodyBodyGyroMag-mean()
77			meanfBodyBodyGyroMagStd			fBodyBodyGyroMag-std()
78			meanfBodyBodyGyroMagMeanFreq		fBodyBodyGyroMag-meanFreq()
79			meanfBodyBodyGyroJerkMagMean		fBodyBodyGyroJerkMag-mean()
80			meanfBodyBodyGyroJerkMagStd		fBodyBodyGyroJerkMag-std()
81			meanfBodyBodyGyroJerkMagMeanFreq	fBodyBodyGyroJerkMag-meanFreq()

