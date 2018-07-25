# Getting-and-Cleaning-the-Data

## Course Project

Creating one R script called run_analysis.R that does the following.

1> Merges the training and the test sets to create one data set.

2> Extracts only the measurements on the mean and standard deviation for each measurement.

3> Uses descriptive activity names to name the activities in the data set.

4> Appropriately labels the data set with descriptive activity names.

5> Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Steps for working on this project

1> Download the data source and put into a folder(UCI HAR Dataset) on your local drive.

2> Put run_analysis.R in the parent folder of UCI HAR Dataset, then set it as your working directory using setwd() function.

3> Run source("run_analysis.R"), then it will generate a new file tiny_data.txt in your working directory.

## Dependencies

run_analysis.R file will install all the dependencies automatically. Mainly reshape2 and data.table packages are required.

More details about data and analysis are provided in the CodeBook.
