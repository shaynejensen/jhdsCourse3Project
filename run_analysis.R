# set working directory to inside UCI HAR Dataset directory
# setwd("C:/Users/sjensen/Documents/RProgramming/GettingAndCleaningData/UCI HAR Dataset")

# load dependencies
library(tidyverse)

# Load label files
activity_labels <- read.delim(file='./activity_labels.txt', sep="", header=FALSE)
features <- read.delim(file='./features.txt', sep="", header=FALSE)

# Load test dataset
subject_test <- read.delim(file='./test/subject_test.txt', sep="", header=FALSE)
test_data_x <- read.delim(file='./test/X_test.txt', sep="", header=FALSE)
test_data_y <- read.delim(file='./test/Y_test.txt', sep="\t", header=FALSE)

# Load train dataset
subject_train <- read.delim(file='./train/subject_train.txt', sep="", header=FALSE)
train_data_x <- read.delim(file='./train/X_train.txt', sep="", header=FALSE)
train_data_y <- read.delim(file='./train/Y_train.txt', sep="\t", header=FALSE)

# combine datasets
subject <- rbind(subject_test, subject_train)
data_x <- rbind(test_data_x, train_data_x)
data_y <- rbind(test_data_y, train_data_y)

# change names on label columns/sets
names(subject) <- c("subject_id")
names(data_y) <- c("activity_id")
names(activity_labels) <- c("activity_id","activity_name")
names(features) <- c("feature_id","feature_name")
names(data_x) <- make.names(c(as.character(features$feature_name)), unique=TRUE)


data_y_labeled <- left_join(data_y, activity_labels, by="activity_id")
data_x_cutdown <- select(data_x, contains('.mean.',ignore.case=FALSE), contains('.std.', ignore.case=FALSE))

data <- cbind(subject, data_y_labeled, data_x_cutdown)

tidy_data <- group_by(data, subject_id, activity_id, activity_name)
tidy_means <- summarize_all(tidy_data, mean)


# data contains full study with joined test data and training data
# tidy_means contains summarized means for each subject-activity combination; six rows per subject as sixe activities were included in the study.
