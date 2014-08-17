==================================================================
Human Activity Recognition Using Smartphones Dataset Summary   Version 1.0
==================================================================
This dataset was created using data created by the experiements conducted by:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

Details of the experiment can be found in the README.txt file that accompanies the raw data files located at the URL below:
       https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
==================================================================

This run_analysis.R script will read in multiple data sets that contain activity data and meta-data. the script will
  combine, transform and clean the data to produce two files:

      fitness_detail.txt - mean and std deviation variables for all observations, subjects and activities
      fitness_summary.txt - average of the mean and std deviation variables for all subjects and activities

The run_analysis.R script, code book and README files can be found here: 
      
      https://github.com/dmurashi/GettingAndCleaningData

==================================================================
OVERVIEW

For each record it is provided:
  - Its activity label. 
  - An identifier of the subject who carried out the experiment.
  - The group the subject belonged to during the experiment. This allows for analysis comparing the measures of the test and train groups
  - mean and std deviation values for the following measures
  
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

  - mean(): Mesan values
  - std(): Standard deviation

==================================================================
The script will extract, transform and clean the raw experiement data by performing the following operations:

 Step 1: Mentally prepare yourself - take a deep breath and relax  
 
 Step 2: set main working directory where the data files exist NOTE: modify this to fit our environment configuration
   "/<your directory>/data/UCI HAR Dataset"
  
 Step 3: create a data frame for the activities and assign descriptive column names
  
 Step 4: create a data frame for the features (measures) 
  
 Step 5:  read in the test and train measures and rename the columns to their proper names defined in features_labels
  
 Step 6: subset to only include mean() and std() columns using the column indexes from feature_labels 

 Step 7: create data frames for the test and train subjects, assign descriptive column name, and add a group identifier to each 
            This will allow for comparisons between the test and training subjects
   
 Step 8: read in the test and train activity labels that describe the variables, assign descriptive column names to the raw data

 Step 9: bind the subject and activity labels to the test and training data frames to create descriptive labels on the data

 Step 10: combine the transformed test and train data frames

 Step 11: assign (merge) descriptive names to the activities using the data frame createdin Step 2, 
      write the detail file to the working directory

 Step 12: create a tidy dataset that contains the average of all measures in the data frame created in Step 11 and write the summary file to the working directory, group by subject and activity 
     
      - collapse all observations to the mean for each mean and std deviation variable
      - sort the data by Subject and Activity   
      - drop the ActivityID column


License:
============================================================
Since this dataset is derived from the work of others, use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.