# You should create one R script called run_analysis.R that does the following:

# 1. Merges the training and the test sets to create one data set.
#    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.

# Usage: merge_data(features, train_data, test_data, 
#                       activity_labels, train_labels, test_labels,
#                       train_subjects, test_subjects)


merge_data <- function(features, train_data, test_data, 
                       activity_labels, train_labels, test_labels,
                       train_subjects, test_subjects) {
  
    # Merge all of the data
    combined_data <- rbind(train_data, test_data)
    combined_labels <- rbind(train_labels, test_labels)
    combined_subjects <- rbind(train_subjects, test_subjects)
    combined_all <- cbind(combined_labels, combined_subjects, combined_data)
    
    # Extract only mean() and std()
    columns_to_extract <- c(1,2,grep("*mean\\(|std\\(*",features$V2)+2)
    subset <- combined_all[,columns_to_extract]
    
    # Assign activity names
    subset <- merge(activity_labels,subset,by="V1")
    
    # Assign column names
    colnames(subset) <- c("activity_code", "activity", "subject",
                          grep("*mean\\(|std\\(*",features$V2,value=TRUE))
    
    # Calculate averages
    result <- aggregate(subset[,-(1:3)], list(subset$activity,subset$subject),mean,na.rm=TRUE)
    result <- rename(result, activity=Group.1, subject=Group.2) 
    write.csv(tbl_df(result), file="final.csv")
    result
}