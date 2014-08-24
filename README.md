==========================================
Getting and Cleaning Data - Course Project
			Ramanakumar Sankar
==========================================
This dataset is the 'cleaning' of the raw data obtained from the experiment on 'Human Activity Recognition Using Smartphones' from 'http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones'.
This experiment dealt with 30 volunteers who were monitored with a Samsung Galaxy S II while doing various activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). A total of 561 values were recorded for each subject for each activity.

===============================
Variables: List and description
===============================
The clean data obtained deals with only 79 variables from the 561. These were the mean and standard deviation of various features recorded. A list of the variables used in the clean data is found under rel_features.txt. Variable names are in lowerCamelCase with the suffixes .AXIS and/or .mean/.std.
For example tBodyAcc.mean.X signifies mean of tBodyAcc feature in the X direction. Note that some means deal with frequency. These are given .meanFreq as a suffix.

==========================
Identification and sorting
==========================

Each subject was given an ID ranging from 1 through 30.
Each activity was given an ID as shown below:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

Each row in the clean dataset deals with the mean of the 79 variables from the original dataset for a specific activity for a specific subject. The rows are sorted first by ID of the subject, and then by the ID of the activity, as given above. Therefore, the first row deals with values for WALKING for subject 1, while the last deals with LAYING for subject 30.

==================
Dataset formatting
==================
All files are formatted as tables. The features list does not feature a header, while the clean data does.
The clean data has the following headings for column numbers:

1: 		subject_id 		An identification number in the range 1 through 30 for each subject. See Identification above.
2: 		activity_id 	An identification number in the range 1 through 6 for each activity. See Identification above.
3: 		activity_name 	The name of the activity given by activity_id in Column 2
4-82: 	variable name	The variable name corresponding to the column. Each value is averaged for each activity for each subject. See Variable above.

==================
Analysis algorithm
==================

The extraction function run_analysis is a function in R:
	Parameter: dir -> a string with a path to the root directory of the dataset ('UCI HAR Dataset')
	Output: No return value
			String output to console detailing current position in the extraction ('e.g. Getting test files...')
			Final data output to file:
				rel_features.txt - Table of variables used in the extraction
				clean_dat.txt - Output table of the clean dataset

=============================
List of files in the data set
=============================
rel_features.txt - A list of 'relevent' variables from the raw data. See Variables above and CodeBook.md
clean_dat.txt - A table with the clean data formatted 180 rows by 82 columns. See CodeBook.md
README.md - This file. Explains nature of experiment and data.
CodeBook.md - An explanation of variables and type of data.
run_analysis.R - Extraction function source code. See Analysis Algorithm above
