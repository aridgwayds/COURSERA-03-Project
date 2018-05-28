# COURSERA-03-Project
This project contains the files required for the final Getting and Cleaning data course

# Introduction
The files required for this assignment are available here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This project requires for source zip file extracted to a location from which R can read from. The files should extract in a folder structure as follows:
UCHI HAR Dataset
	train
		Inertial Signals
	test
		Inertia Signals
    
NOTE: The files in the Inertia Signals folders are not required for this assignment

# UCHI HAR Original Dataset

  README.txt
  features_info.txt	    Shows information about the variables used on the feature vector.
  features.txt	        List of all 561 features.
  activity_labels.txt	  Links the class labels with their activity names.
  /Train files
    subject_train.txt	  Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
    train/X_train.txt	  Training set – results of the 561 features for the activities and subjects.
    train/y_train.txt	  Training labels – labels for each of the activities corresponding to the observation data.
  /Test files
    subject_test.txt	  Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
    test/X_test.txt	    Test set   – results (observations) of the 561 features for the activities and subjects
    test/y_test.txt	    Test labels – labels for each of the activities corresponding to the observation data

# Assignment Deliverables
R-script which reads, subsets and mutates a combined test & train dataset to yield a tidy dataset containing the averages of mean and std (X, Y, and Z ) variables from the original data set:

tBodyAcc mean() X,Y and Z         tBodyAcc std() X,Y and Z
tGravityAcc mean() X,Y and Z      tGravityAcc std() X, Y and Z
tBodyAccJerk mean() X, Y and Z    tBodyAccJerk std() X, Y and Z
tBodyGyro mean() X, Y and Z       tBodyGyro std() X, Y and Z
tBodyGyroJerk mean() X, Y and Z   tBodyGyroJerk mean() X, Y and Z
tBodyAccMag mean()	              tBodyAccMag std()	
tGravityAccMag mean()             tGravityAccMag std()	
tBodyAccJerkMag mean()	          tBodyAccJerkMag std()
tBodyGyroMag mean()               tBodyGyroMag std()            
tBodyGyroJerkMag mean()           tBodyGyroJerkMag std() 
fBodyAcc mean()  X, Y and Z       fBodyAcc std() X, Y and Z
fBodyAccJerk mean() X, Y and Z    fBodyAccJerk std() X,Y and Z
fBodyGyro mean() X, Y and Z       fBodyGyro std() X, Y and Z
fBodyAccMag mean()	              fBodyAccMag std()
fBodyBodyAccJerkMag mean()	      fBodyBodyAccJerkMag std()	
fBodyBodyGyroMag mean()           fBodyBodyGyroMag std()
fBodyBodyGyroJerkMag mean()	      fBodyBodyGyroJerkMag std()

Details about the resulting dataset, including transformations and aggregations, see the CodeBook file.

