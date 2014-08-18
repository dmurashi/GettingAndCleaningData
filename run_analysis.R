run_analysis <- function(){

#   Course Project for Data Science: Track 3 (Aug 4th edition), Getting and Cleaning Data
#     This script will read in multiple data sets that contain information about activity data experiements
#      and combine, transform and clean the data to produce two files:
#             fitness_detail.txt - mean and std deviation variables for all observations, subjects and activities
#             fitness_summary.txt - summary average of observations of the mean and std deviation variables for all subjects and activities

# URL to the data needed to complete this project:
#      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#
# This R script called run_analysis.R does the following. 
#  1. Merges the training and the test sets to create one data set.
#  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#  3. Uses descriptive activity names to name the activities in the data set
#  4. Appropriately labels the data set with descriptive variable names. 
#  5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

  ## Step 1: relax and take a deep breath
  
  ## Step 2: set main working directory where the data files exist 
        setwd("/Users/dmurashi/Documents/Coursera/Data Science/2014-08 Getting and Cleaning Data/data/UCI HAR Dataset")  # main working directory
  
  ## Step 3: create a data frame for the activities and assign descriptive column names
        activity_labels <- read.table("activity_labels.txt")  
        names(activity_labels) <- c("ActivityID","Activity")
  
  ## Step 4: create a data frame for the features (measures) 
        feature_labels <- read.table("features.txt",stringsAsFactors=FALSE) # to be used to name columns in the data
  
  ## Step 5:  read in the test and train measures and rename the columns to their proper names defined in features_labels
        test_data <- read.table("./test/x_test.txt") 
        names(test_data) <-  feature_labels[,2]
        train_data <- read.table("./train/x_train.txt") 
        names(train_data) <-  feature_labels[,2] 
  
  ## Step 6: subset to only include mean() and std() columns using the column indexes from feature_labels 
        mean_cols <- feature_labels[grep("mean\\(\\)",feature_labels$V2),1]  # return only features with "mean" in the name
        std_cols <- feature_labels[grep("std\\(\\)",feature_labels$V2),1]  # return only the column index for features with "std" in the name, 
        
        test_data <- test_data[,c(mean_cols,std_cols)]  #  remove all measures other than mean() and std()
        train_data <- train_data[,c(mean_cols,std_cols)]  #  remove all measures other than mean() and std()

  ## Step 7: create data frames for the test and train subjects, assign descriptive column name, and add a group identifier to each 
        test_subjects <- read.table("./test/subject_test.txt") 
        names(test_subjects) <- "SubjectID"
        test_subjects$Group <- "test"   # add the group identifier 
          
        train_subjects <- read.table("./train/subject_train.txt") 
        names(train_subjects) <- "SubjectID"
        train_subjects$Group <- "train"   # add the group identifier 
   
  ## Step 8: read in the test and train activity labels,assign descriptive column name
        test_labels <- read.table("./test/y_test.txt") 
        names(test_labels) <- "ActivityID"
        train_labels <- read.table("./train/y_train.txt")
        names(train_labels) <- "ActivityID"

  ## Step 9: bind the subject and activity labels to the test and training data frames
        test_data <- cbind(test_labels,test_subjects,test_data)
        train_data <- cbind(train_labels,train_subjects,train_data)

  ##  Step 10: combine the transformed test and train data frames
        all_data <- rbind(test_data,train_data)

  ##  Step 11: assign (merge) descriptive names to the activities using the data frame createdin Step 2, 
  ##        write the detail file to the working directory
        
        all_data <- merge(activity_labels,all_data,by.x="ActivityID",by.y="ActivityID",all=FALSE)
        write.table(all_data,"fitness_detail.txt",row.names=FALSE)

  ## Step 12: create a tidy dataset that contains the average of all measures in the data frame created in Step 11 
  ##         and write the summary file to the working directory, group by subject and activity 
     
        #  collapse all observations to the mean for each variable
        all_data_summary <- aggregate(all_data[,5:66], by=list(SubjectID=all_data$SubjectID,Group=all_data$Group,ActivityID=all_data$ActivityID, Activity=all_data$Activity), mean)
        all_data_summary <- all_data_summary[order(all_data_summary$SubjectID,all_data_summary$ActivityID),]  # sort the data by Subject and Activity   
        all_data_summary <- all_data_summary[,colnames(all_data_summary) != "ActivityID"]  # drop the ActivityID column
        write.table(all_data_summary,"fitness_summary.txt",row.names=FALSE)  # write the data to a text file
}
