---
title: "CodeBook"
author: "Derek M"
date: "August 17, 2014"
---

DATA DICTIONARY - HUMAN ACTIVITY RECOGNITION USING SMARTPHONES DATASET SUMMARY
 
SubjectID
-------------
  Definition: Unique identifier of the person who's activity observations were recorded. This element was added to the raw data via a cbind transformation as they were included in a separate file.
  - Type: numeric
  - Width: 2
  - Range: 1 - 30

Group
-------------
  Definition: Group that the subject belonged to during the experiment. 70% of subjects were randomly selected into the "train" group and 30% selected into the "test" group.  This element was added via a transformation to allow analysis within and across groups.
  - Type: Character
  - Width: 5
  - Range: 
    - test
    - train
  
Activity
-------------
  Definition: The type of activity that was measured for each subject during the experiment. These factors were added to the raw data to providing meaning to the dataset via a merge transformation as they were included in a separate file.
  - Type: Character
  - Width: 18
  - Range:
    - WALKING
    - WALKING_UPSTAIRS
    - WALKING_DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING

Variables
-------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

NOTE: These variables were transformed for all observations to summarize the data to the average for the mean and std deviation

    - tBodyAcc-XYZ (3 measures, 1 each for X, Y, Z)
    - tGravityAcc-XYZ (3 measures, 1 each for X, Y, Z)
    - tBodyAccJerk-XYZ (3 measures, 1 each for X, Y, Z)
    - tBodyGyro-XYZ (3 measures, 1 each for X, Y, Z)
    - tBodyGyroJerk-XYZ (3 measures, 1 each for X, Y, Z)
    - tBodyAccMag
    - tGravityAccMag
    - tBodyAccJerkMag
    - tBodyGyroMag
    - tBodyGyroJerkMag
    - fBodyAcc-XYZ (3 measures, 1 each for X, Y, Z)
    - fBodyAccJerk-XYZ (3 measures, 1 each for X, Y, Z)
    - fBodyGyro-XYZ (3 measures, 1 each for X, Y, Z)
    - fBodyAccMag
    - fBodyAccJerkMag
    - fBodyGyroMag
    - fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mesan value
std(): Standard deviation

