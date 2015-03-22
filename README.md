Purpose

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:
1) A tidy data set as described below;

2) A link to a Github repository with your script for performing the analysis; and

3) A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.

You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.


Objectives

Create run_analysis.R which will performs the following:

1) Merges the training and the test sets to create one data set.

2) Extracts only the measurements on the mean and standard deviation for each measurement.

3) Uses descriptive activity names to name the activities in the data set

4) Appropriately labels the data set with descriptive activity names.

5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject.



Steps to work on this course project

Download the data source from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" and put into a folder on your local drive. You'll have a UCI HAR Dataset folder.

Put run_analysis.R in the UCI HAR Dataset folder, then set it as your working directory using setwd() function in RStudio.

Run source("run_analysis.R"), then it will generate a new file tidy_data.txt in your working directory




