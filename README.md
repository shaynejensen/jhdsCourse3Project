# Tidy Human Activity Recognition Using Smartphones Dataset

As processed by Shayne Jensen from data provided by:

==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The processed files are activity_movements_from_smartphones_summary.csv and activity_movements_from_smartphones_tidy.csv. The contents of these files are described more thoroughly in CodeBook.md. Included labels for activities and variable names (activity_labels.txt and features.txt) have been included for reference in the form of files that were obtained from the original dataset.

The original dataset can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Please see CodeBook.md for more information about the processed dataset.

For an explanation of the original dataset, I have included the original Readme.txt file from the original dataset. 

Changes from the original dataset include 
 - the combining of the train and test datasets 
 - the removal of all characters in variables that were not valid string characters

Two CSV files are included in this distribution, the first has each unique observation from the original dataset, the second summarizes the first dataset for each unique patient and activity combination. Please see CodeBook.md for more information about the preparation and final form of these included datasets.

The script (run_analysis.R) used to produce the two included datasets from the original data is also included.


