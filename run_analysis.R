###############################################################################################################################
##      Coursera Getting and Cleaning Data     
##      Course Project 
##      Maarten Caminada
##
##      Note: I'm happy with the outcome, although I realize there are more ways of achieving this, and probably
##      easier and more elegant ones.
##      I understand the idea behind this project is to come up with a model to predict the activity type based 
##      on signals from the accelerometer and gyroscope from a smartphone. I simply selected all the columns that
##      contain 'mean' or 'std'. For a predictive model I might have chosen different columns.
##
##      Thanks for reviewing me.
##
###############################################################################################################################

# change the default directory
setwd("c:/maca/Rdata/GetData-Assignment/UCI Har Dataset/")

#load the dplyr pacakge (which is already installed)
library(dplyr) 

# read all the text files and put them in memory
Features       <- data.frame(read.table("features.txt", stringsAsFactors = FALSE)[,2])
Activity       <- read.table("./activity_labels.txt")
TrainData      <- read.table("./train/X_train.txt") #no headers
TrainLabels    <- read.table("./train/y_train.txt")
TrainSubjects  <- read.table("./train/subject_train.txt")
TestData       <- read.table("./test/X_test.txt") #no headers
TestLabels     <- read.table("./test/y_test.txt")
TestSubjects   <- read.table("./test/subject_test.txt")

# add the subjects and the labels to the data
Train    <- cbind(TrainSubjects, TrainLabels, TrainData) 
Test     <- cbind(TestSubjects, TestLabels, TestData) 

# Step 1: Merges the training and the test sets to create one data set.
AllData  <- rbind(Train, Test) 

#add Subjects and Activity as column names
Header            <- data.frame(c("Subjects", "ActivityNumber"), stringsAsFactors = FALSE)

# so we can rbind the two
names(Header)     <- names(Features)
Features          <- rbind(Header, Features)

#here the column names for the Data Frame are set
colnames(AllData) <- Features[,1] 
colnames(Activity) <- c("ActivityNumber","ActivityDescription")

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
AllData           <- data.frame(cbind(AllData[,1:2]), 
                       AllData[, grepl("mean()", names(AllData))], 
                       AllData[, grepl("std()", names(AllData))]) 
AllData            <- merge(Activity, AllData, by='ActivityNumber')

# 3. Uses descriptive activity names to name the activities in the data set
AllDataTbl <- tbl_df(AllData)
AllDataTbl <- group_by(AllDataTbl, Subjects, ActivityDescription)
Output     <- summarise_each(AllDataTbl, funs(mean))

#get rid of the Activity Numbers, which are redundant imo
Output$ActivityNumber <- NULL 

# 4. Appropriately labels the data set with descriptive variable names


# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.
write.table(Output, file="TidyDataSet.txt", row.name=FALSE)