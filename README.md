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

###### Variables
data_summary (data frame): 180 Observations with 68 variables  


	VARIABLE | CLASS	| DESCRIPTION   
	--- | --- | ---    
	activity_desc | factor | Activity that was performed when readings were taken (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  
	subject | factor | Number representing the participant who engaged in the observation  
	time_Body_Acceleration-Mean-X	|	num |  
	time_Body_Acceleration-Mean-Y	|	num |  
	time_Body_Acceleration-Mean-Z	|	num |  
	time_Gravity_Acceleration-Mean-X	|	num |  
	time_Gravity_Acceleration-Mean-Y	|	num |  
	time_Gravity_Acceleration-Mean-Z	|	num |  
	time_Body_AccelerationJerk-Mean-X	|	num |  
	time_Body_AccelerationJerk-Mean-Y	|	num |  
	time_Body_AccelerationJerk-Mean-Z	|	num |  
	time_Body_Gyro-Mean-X	|	num |  
	time_Body_Gyro-Mean-Y	|	num |  
	time_Body_Gyro-Mean-Z	|	num |  
	time_Body_GyroJerk-Mean-X	|	num |  
	time_Body_GyroJerk-Mean-Y	|	num |  
	time_Body_GyroJerk-Mean-Z	|	num |  
	time_Body_AccelerationMagnitude-Mean	|	num |  
	time_Gravity_AccelerationMagnitude-Mean	|	num |  
	time_Body_AccelerationJerkMagnitude-Mean	|	num |  
	time_Body_GyroMagnitude-Mean	|	num |  
	time_Body_GyroJerkMagnitude-Mean	|	num |  
	frequency_Body_Acceleration-Mean-X	|	num |  
	frequency_Body_Acceleration-Mean-Y	|	num |  
	frequency_Body_Acceleration-Mean-Z	|	num |  
	frequency_Body_AccelerationJerk-Mean-X	|	num |  
	frequency_Body_AccelerationJerk-Mean-Y	|	num |  
	frequency_Body_AccelerationJerk-Mean-Z	|	num |  
	frequency_Body_Gyro-Mean-X	|	num |  
	frequency_Body_Gyro-Mean-Y	|	num |  
	frequency_Body_Gyro-Mean-Z	|	num |  
	frequency_Body_AccelerationMagnitude-Mean	|	num |  
	frequency_Body_BodyAccelerationJerkMagnitude-Mean	|	num |  
	frequency_Body_BodyGyroMagnitude-Mean	|	num |  
	frequency_Body_BodyGyroJerkMagnitude-Mean	|	num |  
	time_Body_Acceleration-StandardDev-X	|	num |  
	time_Body_Acceleration-StandardDev-Y	|	num |  
	time_Body_Acceleration-StandardDev-Z	|	num |  
	time_Gravity_Acceleration-StandardDev-X	|	num |  
	time_Gravity_Acceleration-StandardDev-Y	|	num |  
	time_Gravity_Acceleration-StandardDev-Z	|	num |  
	time_Body_AccelerationJerk-StandardDev-X	|	num |  
	time_Body_AccelerationJerk-StandardDev-Y	|	num |  
	time_Body_AccelerationJerk-StandardDev-Z	|	num |  
	time_Body_Gyro-StandardDev-X	|	num |  
	time_Body_Gyro-StandardDev-Y	|	num |  
	time_Body_Gyro-StandardDev-Z	|	num |  
	time_Body_GyroJerk-StandardDev-X	|	num |  
	time_Body_GyroJerk-StandardDev-Y	|	num |  
	time_Body_GyroJerk-StandardDev-Z	|	num |  
	time_Body_AccelerationMagnitude-StandardDev	|	num |  
	time_Gravity_AccelerationMagnitude-StandardDev	|	num |  
	time_Body_AccelerationJerkMagnitude-StandardDev	|	num |  
	time_Body_GyroMagnitude-StandardDev	|	num |  
	time_Body_GyroJerkMagnitude-StandardDev	|	num |  
	frequency_Body_Acceleration-StandardDev-X	|	num |  
	frequency_Body_Acceleration-StandardDev-Y	|	num |  
	frequency_Body_Acceleration-StandardDev-Z	|	num |  
	frequency_Body_AccelerationJerk-StandardDev-X	|	num |  
	frequency_Body_AccelerationJerk-StandardDev-Y	|	num |  
	frequency_Body_AccelerationJerk-StandardDev-Z	|	num |  
	frequency_Body_Gyro-StandardDev-X	|	num |  
	frequency_Body_Gyro-StandardDev-Y	|	num |  
	frequency_Body_Gyro-StandardDev-Z	|	num |  
	frequency_Body_AccelerationMagnitude-StandardDev	|	num |  
	frequency_Body_BodyAccelerationJerkMagnitude-StandardDev	|	num |  
	frequency_Body_BodyGyroMagnitude-StandardDev	|	num |  
	frequency_Body_BodyGyroJerkMagnitude-StandardDev	|	num |  




#### dataSummary.txt
###### Description
Output file of run_analysis.R.  This outputs a tidy data set of the "data_summary" object described above  




#### README.MD
###### Description
This file.  A description of files, variables, and summaries.
