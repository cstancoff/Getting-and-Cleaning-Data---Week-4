Week 4 Assignment
=================

You should create one R script called run\_analysis.R that does the
following:

1.  Merges the training and the test sets to create one data set.
    <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
2.  Extracts only the measurements on the mean and standard deviation
    for each measurement.
3.  Uses descriptive activity names to name the activities in the data
    set
4.  Appropriately labels the data set with descriptive variable names.
5.  From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and
    each subject.

<!-- -->

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

The accelerometer and gyroscope data was provided in two text files
("X\_train.txt" and "X\_test.txt") that consisted of 7352 and 2947
records respectively, with 561 measurements each. Similarly, two text
files ("y\_train.txt" and "y\_test.txt") provided an activity code for
each record and two text files ("subject\_train.txt" and
"subject\_test.txt") provided the subject for each record. Additionally,
a text file ("features.txt") provided a name for each of the
measurments. The files were combined to create one table of size 10299 x
563.

This table was reduced to just the 68 measurements of mean and standard
deviation. Next, a text file ("activity\_labels.txt") providing a
description for each of the activities was merged with the reduced table
and the names for the measurments from "features.txt" was used to
provide descriptive names for each of the columns. Finally, the average
of each measurement was calculated for each subject/activity pairing.
