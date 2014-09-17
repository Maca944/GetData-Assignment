## Getting and Cleaning Data: Course Project

### Introduction

This repository contains my work regarding the Course Project for the Getting and Cleaning Data course, part of the Data Science Specialization of Coursera.

### Raw Data

The raw data is obtained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The unpacked files are stored on a local pc. 

The files that are used are:
* features.txt
* activity_labels.txt
* x_train.txt
* y_train.txt
* subject_train.txt
* x_test.txt
* y_test.txt
* subject_tst.txt

Features.txt contains the names of all the labels used. The description of the activity labels and their corresponding activity numbers are in activity_labels.txt. The 561 features are unlabeled and can be found in the x_train.txt. The activity labels are in the y_train.txt file. The train subjects are in the subject_train.txt file. The same holds for the test set.

## The Script

The script that uses the abovementionned files and returns a tidy dataset as output can be found in run_analysis.R. The .zip file containing the dataset must be unpacked to the working directory c:/maca/Rdata/GetData-Assignment/UCI Har Dataset/

The script reads the data, merges the train and the test set, selects only the columns which have to do with either the mean or the standard deviation, names the columns and replaces the activity label numbers by their description. Finally, the average value of each variable is calculated and saved as a tidy dataset names TidyDataSet.txt (tab-separated). This file can be found in this repository.

## The Code Book

The Code Book (CodeBook.md) explains the transformations performed and the resulting data and variables.
