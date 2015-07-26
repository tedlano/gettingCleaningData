###############################################################################
# File:     run_analysis.R
# Author:   Theodore Lano <theodore.lano@gmail.com>
# 
# Desc:     Created for "Getting and Cleaning Data" course project offered
#           through coursera.com.  The R Script will read in data from text 
#           files stored in a local directory, clean the data, subset the data 
#           to return columns relating to Mean and Standard Deviation 
#           measurements, then output a file that displays averages for these
#           values based on the activity and subject of the measurement.
###############################################################################

###############################################################################
# 1. Specify Directory and File References
###############################################################################

## 1.1  Specify Directories
local_dir <- "./"
data_dir <- "getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/"
test_dir <- "test/"
train_dir <- "train/"

## 1.2  Specify File names
features_file <- "features.txt"
activity_labels_file <- "activity_labels.txt"
subject_train_file <-"subject_train.txt"
train_x_file <- "X_train.txt"
train_y_file <- "y_train.txt"
subject_test_file <- "subject_test.txt"
test_x_file <- "X_test.txt"
test_y_file <- "y_test.txt"


###############################################################################
# 2.  Read in Data Files
###############################################################################

## 2.1 Read in features.txt and activity_labels.txt files
features <- read.table(paste(local_dir, data_dir, features_file, sep=""))
activity_labels <- read.table(paste(local_dir, data_dir, activity_labels_file, sep=""))

## 2.2 Read in Train files
train_subject <- read.table(paste(local_dir, data_dir, train_dir, subject_train_file, sep=""))
train_x <- read.table(paste(local_dir, data_dir, train_dir, train_x_file, sep=""))
train_y <- read.table(paste(local_dir, data_dir, train_dir, train_y_file, sep=""))

## 2.3 Read in Test files
test_subject <- read.table(paste(local_dir, data_dir, test_dir, subject_test_file, sep=""))
test_x <- read.table(paste(local_dir, data_dir, test_dir, test_x_file, sep=""))
test_y <- read.table(paste(local_dir, data_dir, test_dir, test_y_file, sep=""))


###############################################################################
# 3. Set column names for train and test data, add activity_code and subject
###############################################################################

## 3.1  Label columns with descriptive names from the features.txt file
colnames(train_x) <- features$V2
colnames(test_x) <- features$V2

## 3.2 Create "activity_code" column for train and test data
train_x$activity_code <- train_y$V1
test_x$activity_code <- test_y$V1

## 3.3 Create "subject" column for train and test data
train_x$subject <- train_subject$V1
test_x$subject <- test_subject$V1


###############################################################################
# 4. Merge activity_labels data with train_x data and train_y data
###############################################################################

## 4.1 Rename column names in "activity_labels" data, used to join with train_x and test_x
library(data.table)
setnames(activity_labels, old=c("V1","V2"), new=c("activity_code", "activity_desc"))

## 4.2 Merge data from train_x.txt, train_y.txt, activity_labels.txt, and features.txt
## Same goes for test_x.txt, test_y.txt, activity_labels.txt, and features.txt
train_clean <- merge(train_x, activity_labels, by="activity_code")
test_clean <- merge(test_x, activity_labels, by="activity_code")


###############################################################################
# 5. Combine train and test data frames
###############################################################################

## 5.1 Join train and test data into same data frame
data_merge <- rbind(train_clean, test_clean)


###############################################################################
# 6. Cleanup: Remove unused data objects and values
###############################################################################
rm(
  train_clean,
  train_subject,
  train_x, 
  train_y, 
  test_clean,
  test_subject,
  test_x, 
  test_y, 
  activity_labels, 
  features,
  local_dir,
  data_dir,
  test_dir,
  train_dir,
  features_file,
  activity_labels_file,
  subject_train_file,
  train_x_file,
  train_y_file,
  subject_test_file,
  test_x_file,
  test_y_file
)


###############################################################################
# 7. Subset combined data frame to get only certain columns
###############################################################################

## 7.1 Find column indices with means and column indices with standard deviations
mean_idx <- grep("-mean()", names(data_merge), fixed=TRUE)
std_idx <- grep("-std()", names(data_merge), fixed=TRUE)

## 7.2 Find column indices for "activity_desc" and "subject"
activity_idx <- grep("activity_desc", names(data_merge), fixed=TRUE)
subject_idx <- grep("subject", names(data_merge), fixed=TRUE)

## 7.3 Subset data frame for Activity, Subject, Mean, and Standard Deviation columns
data_sub <- data_merge[c(mean_idx, std_idx, subject_idx, activity_idx)]


###############################################################################
# 8. Cleanup: Remove unused data objects and values
###############################################################################
rm(
  activity_idx,
  mean_idx,
  std_idx, 
  subject_idx,
  data_merge
)


###############################################################################
# 9. Create Factor Variables, Reshape Data, Rename Columns
###############################################################################

## 9.1 Turn "activity_desc" and "subject" into factor variables
data_sub$activity_desc = factor(data_sub$activity_desc)
data_sub$subject = factor(data_sub$subject)

## 9.2 Melt data and cast so that the means of the value columns are wrapped
##  up into activity_desc, and subject factor variables
library(reshape2)
data_melt <- melt(data_sub, id=c("activity_desc", "subject"))
data_summary <- dcast(data_melt, activity_desc + subject ~ variable, mean)

## 9.3 Rename column names to be more descriptive
names(data_summary) <- gsub("tBody", "time_Body_", names(data_summary))
names(data_summary) <- gsub("tGravity", "time_Gravity_", names(data_summary))
names(data_summary) <- gsub("fBody", "frequency_Body_", names(data_summary))
names(data_summary) <- gsub("Mag", "Magnitude", names(data_summary))
names(data_summary) <- gsub("Acc", "Acceleration", names(data_summary))
names(data_summary) <- gsub("-mean()", "-Mean", names(data_summary))
names(data_summary) <- gsub("-std()", "-StandardDev", names(data_summary))
names(data_summary) <- gsub("[^-_,A-Za-z0-9 ]", "", names(data_summary))


###############################################################################
# 10. Cleanup: Remove unused data objects and values
###############################################################################
rm(
  data_sub,
  data_melt
)


###############################################################################
# 11. Output data set into new file
###############################################################################
write.table(data_summary, "./dataSummary.txt", row.name=FALSE)