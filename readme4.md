# Getting and Cleaning Data: Course Project

# Introduction

This repository contains the project files for the final assignment of
the Coursera: Data and Cleaning course. The objective of the course was
to apply the concepts learned during the course, specifically:

    * Loading and txt file data
    * Sub-setting data
    * Renaming Variable name
    * Merging data sets

The assignment required accessing raw data and then working with the source files to create a tidy, summarized dataset.

# Raw Dataset

The files required for this assignment are available here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This project requires that the source zip file are extracted to a location from
which R can read from. The files should extract in a folder structure as
follows:

* UCHI HAR Dataset
  * train
    * Inertial Signals
  * test
    * Inertia Signals

NOTE: The files in the Inertia Signals folders are not required for this assignment

# UCHI HAR Dataset

Files required for this assignment are:
  * features.txt:         List of all 561 features.
  * activity_labels.txt:  Links the class labels with their activity names.
  * /Train files
    * subject_train.txt:   Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
    * X_train.txt:         Training set -- results of the 561 features for the activities and subjects.
    * y_train.txt:         Training labels -- labels for each of the activities corresponding to the observation data.
  * /Test files
    * subject_test.txt:   Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
    * X_test.txt:         Test set -- results (observations) of the 561 features for the activities and subjects
    * y_test.txt:         Test labels -- labels for each of the activities corresponding to the observation data

# Assignment Deliverables

R-script which reads, subsets and mutates a combined test & train dataset to yield a tidy dataset containing the averages of mean and std (X, Y, and Z ) variables from the original data set:

  ----------------------|---------------------------|------------------------------------|
  tBodyAcc mean() X     |   tBodyAcc mean() Y       |     tBodyAcc mean() Z              |
  tBodyAcc std() X      |   tBodyAcc std() Y        |     tBodyAcc std() Z               |
  tGravityAcc mean() X  |   tGravityAcc mean() Y    |     tGravityAcc mean() Z           |
  tGravityAcc std() X   |   tGravityAcc std() Y     |     tGravityAcc std() Z            |
  tBodyAccJerk mean() X |   tBodyAccJerk mean() Y   |     tBodyAccJerk mean() Z
  tBodyAccJerk std() X  |   tBodyAccJerk std() Y    |     tBodyAccJerk std() Z
  tBodyGyro mean() X    |   tBodyGyro mean() Y      |     tBodyGyro mean() Z
  tBodyGyro std() X     |   tBodyGyro std() Y       |     tBodyGyro std() Z
  tBodyGyroJerk mean() X  |      tBodyGyroJerk mean() Y   |     tBodyGyroJerk mean() Z
  tBodyGyroJerk std() X   |     tBodyGyroJerk std() Y    |      tBodyGyroJerk std() Z
  tBodyAccMag mean()      |     tBodyAccMag std()        |      tGravityAccMag mean()
  tGravityAccMag std()    |      tBodyAccJerkMag mean()  |      tBodyAccJerkMag std()
  tBodyGyroMag mean()     |       tBodyGyroMag std()     |      tBodyGyroJerkMag mean()
  tBodyGyroJerkMag std()  |      fBodyAcc mean() X       |       fBodyAcc mean() Y
  fBodyAcc mean() Z       |     fBodyAcc std() X         |       fBodyAcc std() Y
  fBodyAcc std() Z        |     fBodyAccJerk mean() X    |      fBodyAccJerk mean() Y
  fBodyAccJerk mean() Z   |     fBodyAccJerk std() X     |       fBodyAccJerk std() Y
  fBodyAccJerk std() Z    |     fBodyGyro mean() X       |      fBodyGyro mean() Y
  fBodyGyro mean() Z      |      fBodyGyro std() X       |       fBodyGyro std() Y
  fBodyGyro std() Z       |       fBodyAccMag mean()     |         fBodyAccMag std()
  fBodyBodyAccJerkMag mean() |  fBodyBodyAccJerkMag std() |    fBodyBodyGyroMag mean()
  fBodyBodyGyroMag std()   |    fBodyBodyGyroJerkMag mean() |  fBodyBodyGyroJerkMag std()

Details about the resulting dataset, including transformations and aggregations, see the CodeBook file.
