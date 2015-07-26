# gettingCleaningData
Author: Theodore Lano <theodore.lano@gmail.com>
Desc: This repository was created for "Getting and Cleaning Data" course project offered through coursera.com.  

## Files:
#### run_analysis.R
###### Description
This R Script will read in data from text files stored in a local directory, clean the data, subset the data to return columns relating to mean and standard deviation measurements, then output a file that displays averages for these values grouped by the activity type and subject of the measurement.

The script is organized as follows:

1. Specify Directory and File References  
  1.1 Specify Directories  
  1.2 Specify File Names  
2. Read in Data Files  
  2.1 Read in features.txt and activity_labels.txt files  
  2.2 Read in Train files  
  2.3 Read in Test files  
3. Set column names for train and test data, add activity_code and subject  
  3.1 Label columns with descriptive names from the features.txt file  
  3.2 Create "activity_code" column for train and test data  
  3.3 Create "subject" column for train and test data  
4. Merge activity_labels data with train_x data and train_y data  
  4.1 Rename column names in "activity_labels" data, used to join with train_x and test_x  
  4.2 Merge data from train_x.txt, train_y.txt, activity_labels.txt, and features.txt.  Do the same for test_x.txt, test_y.txt, activity_labels.txt, and features.txt  
5. Combine train and test data frames  
6. Cleanup: Remove unused data objects and values  
7. Subset combined data frame to get only certain columns  
  7.1 Find column indices with means and column indices with standard deviations  
  7.2 Find column indices for "activity_desc" and "subject"  
  7.3 Subset data frame for Activity, Subject, Mean, and Standard Deviation columns  
8. Cleanup: Removed unused data objects and values  
9. Create Factor Variables, Reshape Data, Rename Columns  
  9.1 Turn "activity_desc" and "subject" into factor variables  
  9.2 Melt data and cast so that the means of the value columns are wrapped up into "activity_desc" and "subject" factor variables  
  9.3 Rename column names to be more descriptive  
10. Cleanup: Remove unused data objects and values  
11. Output data set into new file  


#### dataSummary.txt
###### Description
Output file of run_analysis.R.  This outputs a tidy data set of the "data_summary" object described above  


####CodeBook.MD
###### Description
A file that describes the variables used during run_analysis.R and the output of dataSummary.txt


#### README.MD
###### Description
This file.  A description of files contained in this repository
