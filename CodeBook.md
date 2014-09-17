
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

The Subjects, Labels and Data are combined for the Train and Test set, after which the two sets are combined. Then the column names are added. The column names are appropriatelly labeled as follows:
* std() is replaced by Stdev
* t is replaced by time
* f is replaced by Freqdomainsignals
* Acc is replaced by Acceleration
* Mag is replaced by Magnitude
* all dots are removed
Only the columnnames with mean or std are selected and the column names are cleaned.

Finally the average for each variable is calculated and the result is written to 'TidyDataSet.txt.'

