---
title: "CodeBook"
output: html_document
---

The raw data can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The following unzipped local files are read into memory: features.txt, activity_labels.txt, X_train.txt, y_train.txt, subject_train.txt, X_test.txt, y_test.txt and subject_test.txt.

The Subjects, Labels and Data are combined for the Train and Test set, after which the two sets are combined.
Then the column names are added, only the columnnames with mean or std are selected and the column names are cleaned. 

Finally the average for each variable is calculated and the result is written to 'TidyDataSet.txt.'

