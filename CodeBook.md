
# Code Book

This code book will describe the data used in this project, as well as the processing required to create the resulting tidy data set.

## Datasource

- Dataset : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Description of dataset : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Overview

30 volunteers performed 6 different activities while wearing a smartphone. The smartphone captured various data about their movements.
Explanation of each file

- features.txt: Names of the features.

- activity_labels.txt: Names and IDs for each of the 6 activities.

- X_train.txt: 7352 observations of the 561 features, for 70% of the volunteers.

- subject_train.txt: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt.

- y_train.txt: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt.

- X_test.txt: 2947 observations of the 561 features, for remaining 30% of the volunteers.

- subject_test.txt: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt.

- y_test.txt: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt.


### Data files that were not used

This analysis was performed using only the files above, and did not use the raw signal data. Therefore, the data files in the "Inertial Signals" folders were ignored.

## High Level Steps for processing

- Load both the test data,train data, features and activity labels.

- Merge the training and the test sets to create one data set.

- Extract only the measurements on the mean and standard deviation for each record.

- Uses descriptive activity names to name the activities in the data set.

- Appropriately labels the data set with descriptive activity names.

- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

