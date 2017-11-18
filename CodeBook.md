# CODE BOOK

## What is Included in this File

The data included in this directory was derived from the original dataset from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A tidy version of the data can be found in activity_movements_from_smartphones_tidy.csv. This version includes only columns with mean and standard deviation columns from the original dataset and has multiple rows for each activity and subject. This file is the raw data, combined into one tidy file with activity and features names.

A summarized version of the data is also included, activity_movemetns_from_smartphones_summary.csv which includes only columns with means and standard deviation columns and all unique activities for each test subject have been averaged into a single row for that unique test subject and activity combination. There are six rows for each test subject--one row for each activity.


## How the Data was Prepared (What I did)

The script, run_analysis.R, includes all of the actions I used to create the tidy and summarized datasets from the original data. run_analysis.R takes the following actions to produce the two datasets, activity_movements_from_smartphones_tidy.csv and activity_movements_from_smartphones_summary.csv, from the original data:
1. Load dependencies (tidyverse)
2. Load label files from activity_labels.txt and features.txt
3. Load data from test dataset found in test directory
4. Load data from train dataset found in train directory
5. Combine the train and test datasets
6. Add subject_id and activity_id columns
7. Add feature names as column headers populated with feature names given in features.txt. Invalid characters in feature names are replaced with "."
8. Add activity_name column with name of activity from activity_labels.txt matched to activity_id 
9. Cutdown dataset to include only columns for means and standard deviation features
10. Generate second summarized dataset that includes only one row for each activity and subject combination


## Details about the Output files

There are two files produced by the included script, run_analysis.R.  

### activity_movements_from_smartphones_tidy.csv

Variables Count: 69
Observations Count: 10299

This file provides the mean and standard deviation variables for each observation. A complete list of column names can be found at the end of this file. A description of the meaning of the feature names from the original documentation can be found in the section of this file named *Summary of Column Names*. The variable names have been altered from the original dataset in that all invalid character have been changed to "." with the make.names operation. This dataset keeps all data associated with its original observation row. No summaries have been made.


### activity_movements_from_smartphones_summary.csv

Variables Count: 69
Observations Count: 180

This file provides the means of the mean and standard deviation variables grouped by unique subject and activity. A complete list of column names can be found at the end of this file. A description of the meaning of the feature names from the original documentation can be found in the section of this file named *Summary of Column Names*. The variable names have been altered from the original dataset in that all invalid character have been changed to "." with the make.names operation. This dataset summarizes the previous dataset with a unique constraint on the combination of subject of and activity and produces a mean for each variable in combined rows. The file contains up to six rows per test subject as each test subject participated in up to six activities during testing.


## Summary of Column Names

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'


## Complete List of Column Names in Processed datasets

subject_id                  
activity_id                 
activity_name               
tBodyAcc.mean...X          
tBodyAcc.mean...Y           
tBodyAcc.mean...Z           
tGravityAcc.mean...X        
tGravityAcc.mean...Y       
tGravityAcc.mean...Z        
tBodyAccJerk.mean...X       
tBodyAccJerk.mean...Y       
tBodyAccJerk.mean...Z      
tBodyGyro.mean...X          
tBodyGyro.mean...Y          
tBodyGyro.mean...Z          
tBodyGyroJerk.mean...X     
tBodyGyroJerk.mean...Y      
tBodyGyroJerk.mean...Z      
tBodyAccMag.mean..          
tGravityAccMag.mean..      
tBodyAccJerkMag.mean..      
tBodyGyroMag.mean..         
tBodyGyroJerkMag.mean..     
fBodyAcc.mean...X          
fBodyAcc.mean...Y           
fBodyAcc.mean...Z           
fBodyAccJerk.mean...X       
fBodyAccJerk.mean...Y      
fBodyAccJerk.mean...Z       
fBodyGyro.mean...X          
fBodyGyro.mean...Y          
fBodyGyro.mean...Z         
fBodyAccMag.mean..          
fBodyBodyAccJerkMag.mean..  
fBodyBodyGyroMag.mean..     
fBodyBodyGyroJerkMag.mean..
tBodyAcc.std...X            
tBodyAcc.std...Y            
tBodyAcc.std...Z            
tGravityAcc.std...X        
tGravityAcc.std...Y         
tGravityAcc.std...Z         
tBodyAccJerk.std...X        
tBodyAccJerk.std...Y       
tBodyAccJerk.std...Z        
tBodyGyro.std...X           
tBodyGyro.std...Y           
tBodyGyro.std...Z          
tBodyGyroJerk.std...X       
tBodyGyroJerk.std...Y       
tBodyGyroJerk.std...Z       
tBodyAccMag.std..          
tGravityAccMag.std..        
tBodyAccJerkMag.std..       
tBodyGyroMag.std..          
tBodyGyroJerkMag.std..     
fBodyAcc.std...X            
fBodyAcc.std...Y            
fBodyAcc.std...Z            
fBodyAccJerk.std...X       
fBodyAccJerk.std...Y        
fBodyAccJerk.std...Z        
fBodyGyro.std...X           
fBodyGyro.std...Y          
fBodyGyro.std...Z           
fBodyAccMag.std..           
fBodyBodyAccJerkMag.std..   
fBodyBodyGyroMag.std..     
fBodyBodyGyroJerkMag.std.. 

 