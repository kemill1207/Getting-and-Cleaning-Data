#Getting and Cleaning Data
##CodeBook

###Data Collection and Analysis

The data contained in the UCI HAR Dataset collects the readings of over 10,000 tests from the 30 subjects, who each performed the 6 activities.  

run_analysis.r combines all of the data into a single table, then finds the mean for each measurement for each activity performed by each subject.  The final output is a tidy, 180 x 68, summary data table  which reports these averages.  

###Summary of Variables for the output of run_analysis.R:

####Subject
Factor. 30 levels
Numbers 1 through 30.  Each number represents an individual subject.
     
####Activity
Factor. 6 levels
Each factor name describes the activity performed by each subject for which data was recorded.

     LYING
     SITTING
     STANDING
     WALKING
     WALKING_UPSTAIRS
     WALKING DOWNSTAIRS

####Measurements
The following column names are the different measurements which were recorded for each activity by each subject.  Please refer to features_info.txt in the UCI HAR Dataset for more information.  The data in the outcome table is the mean of each of the following for each subject performing each activity.  These are numeric values.

     tBodyAcc-mean()-X          
     tBodyAcc-mean()-Y
     tBodyAcc-mean()-Z
     tBodyAcc-std()-X
     tBodyAcc-std()-Y
     tBodyAcc-std()-Z
     tGravityAcc-mean()-X
     tGravityAcc-mean()-Y
     tGravityAcc-mean()-Z
     tGravityAcc-std()-X
     tGravityAcc-std()-Y
     tGravityAcc-std()-Z
     tBodyAccJerk-mean()-X
     tBodyAccJerk-mean()-Y
     tBodyAccJerk-mean()-Z
     tBodyAccJerk-std()-X
     tBodyAccJerk-std()-Y
     tBodyAccJerk-std()-Z
     tBodyGyro-mean()-X
     tBodyGyro-mean()-Y
     tBodyGyro-mean()-Z
     tBodyGyro-std()-X
     tBodyGyro-std()-Y
     tBodyGyro-std()-Z
     tBodyGyroJerk-mean()-X
     tBodyGyroJerk-mean()-Y
     tBodyGyroJerk-mean()-Z
     tBodyGyroJerk-std()-X
     tBodyGyroJerk-std()-Y
     tBodyGyroJerk-std()-Z
     tBodyAccMag-mean()
     tBodyAccMag-std()
     tGravityAccMag-mean()
     tGravityAccMag-std()
     tBodyAccJerkMag-mean()
     tBodyAccJerkMag-std()
     tBodyGyroMag-mean()
     tBodyGyroMag-std()
     tBodyGyroJerkMag-mean()
     tBodyGyroJerkMag-std()
     fBodyAcc-mean()-X
     fBodyAcc-mean()-Y
     fBodyAcc-mean()-Z
     fBodyAcc-std()-X
     fBodyAcc-std()-Y
     fBodyAcc-std()-Z
     fBodyAccJerk-mean()-X
     fBodyAccJerk-mean()-Y
     fBodyAccJerk-mean()-Z
     fBodyAccJerk-std()-X
     fBodyAccJerk-std()-Y
     fBodyAccJerk-std()-Z
     fBodyGyro-mean()-X
     fBodyGyro-mean()-Y
     fBodyGyro-mean()-Z
     fBodyGyro-std()-X
     fBodyGyro-std()-Y
     fBodyGyro-std()-Z
     fBodyAccMag-mean()
     fBodyAccMag-std()
     fBodyBodyAccJerkMag-mean()
     fBodyBodyAccJerkMag-std()
     fBodyBodyGyroMag-mean()
     fBodyBodyGyroMag-std()
     fBodyBodyGyroJerkMag-mean()
     fBodyBodyGyroJerkMag-std()
