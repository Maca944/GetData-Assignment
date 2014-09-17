
## CodeBook for run_analysis.R

### Data source

The dataset is obtained from the "Human Activity Recognition Using Smartphones Data Set". Information about this dataset as well as the dataset itself can be found here:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Feature Selection

From the README.txt file of the zipped dataset:

For 30 volunteers six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) are measured using a smartphone. 

For each record it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.
 
Note that features are normalized and bounded within [-1,1].

For more details I refer to the original README.txt file in the dataset.

### Cleaning the data

The script performs the following steps.
1. set the working directory to c:/maca/Rdata/GetData-Assignment/UCI Har Dataset/

1. set the working directory to c:/maca/Rdata/GetData-Assignment/UCI Har Dataset/
2. load the dplyr package
3. read all the text files and put them in memory
4. add the subjects and the labels to the data
5. merge the training and the test sets to create one data set
6. add column names
7. extract only the measurements on the mean and standard deviation for each measurement
8. uses descriptive activity names to name the activities in the data set
9. get rid of the Activity Numbers
10. appropriately label the data set with descriptive variable names
11. create a data set with the average of each variable for each activity and each subject
12. save the data set as "TidyDataSet.txt"

ad 10 the follwing changes are made to the column names:
* std() is replaced by Stdev
* t is replaced by time
* f is replaced by Freqdomainsignals
* Acc is replaced by Acceleration
* Mag is replaced by Magnitude
* all dots are removed


