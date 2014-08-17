---
title: "CodeBook"
author: "Derek Murashige"
date: "August 17, 2014"
---

DATA DICTIONARY - HUMAN ACTIVITY RECOGNITION USING SMARTPHONES DATASET SUMMARY
 
SubjectID
-------------
  Definition: Unique identifier of the person who's activity observations were recorded. This element was added to the raw data via a cbind transformation as they were included in a separate file.
  Type: numeric
  Width: 2
  Range: 1 - 30

Group
-------------
  Definition: Group that the subject belonged to during the experiment. 70% of subjects were randomly selected into the "train" group and 30% selected into the "test" group.  This element was added via a transformation to allow analysis within and across groups.
  Type: Character
  Width: 5
  Range: "test","train" 
  
Activity
-------------
  Definition: The type of activity that was measured for each subject during the experiment. These factors were added to the raw data to providing meaning to the dataset via a merge transformation as they were included in a separate file.
  Type: Character
  Width: 18
  Range:
  
    - WALKING
    - WALKING_UPSTAIRS
    - WALKING_DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING

Variables
-------------
  These variables were transformed for all observations to summarize the data to the average for all mean and std deviation:

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
