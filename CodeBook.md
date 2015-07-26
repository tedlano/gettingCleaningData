# CodeBook.md
#### By Theodore Lano <theodore.lano@gmail.com>  

##### This codebook will describe the data used in the run_analysis script and the variables that have been outputted to the dataSummary.txt file  

The data that has been used in this analysis can be found in this repository at [gettingCleaningData/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/] (https://github.com/theodore4889/gettingCleaningData/tree/master/getdata-projectfiles-UCI%20HAR%20Dataset/UCI%20HAR%20Dataset).  This directory include a README.txt file that explains how this data was recorded and what it is supposed to represent.  

The output data is a data frame with 180 observations and 68 variables.  2 of these variables are factor variables called "activity_desc" and "subjet".  Mean values were calculated for the remaining variables, grouped by unique combinations of the two factor variables.  
 
Variable	|	Type	|	Unit	|	Description	
---	|	---	|	---	|	---	
activity_desc	|	factor	|	-	|	Activity that was performed when readings were taken (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)	  
subject	|	factor	|	-	|	Identifier representing the participant who engaged in the observation (1..30)	  
time_Body_Accelerometer-Mean-X	|	num	|	seconds	|	Body Accelerometer Measurement, Mean, X-Axis	  
time_Body_Accelerometer-Mean-Y	|	num	|	seconds	|	Body Accelerometer Measurement, Mean, Y-Axis	  
time_Body_Accelerometer-Mean-Z	|	num	|	seconds	|	Body Accelerometer Measurement, Mean, Z-Axis	  
time_Gravity_Accelerometer-Mean-X	|	num	|	seconds	|	Gravity Accelerometer Measurement, Mean, X-Axis	  
time_Gravity_Accelerometer-Mean-Y	|	num	|	seconds	|	Gravity Accelerometer Measurement, Mean, Y-Axis	  
time_Gravity_Accelerometer-Mean-Z	|	num	|	seconds	|	Gravity Accelerometer Measurement, Mean, Z-Axis	  
time_Body_AccelerometerJerk-Mean-X	|	num	|	seconds	|	Body Accelerometer Measurement, Jerk, Mean, X-Axis	  
time_Body_AccelerometerJerk-Mean-Y	|	num	|	seconds	|	Body Accelerometer Measurement, Jerk, Mean, Y-Axis	  
time_Body_AccelerometerJerk-Mean-Z	|	num	|	seconds	|	Body Accelerometer Measurement, Jerk, Mean, Z-Axis	  
time_Body_Gyroscope-Mean-X	|	num	|	seconds	|	Gyroscope Measurement, Mean, X-Axis	  
time_Body_Gyroscope-Mean-Y	|	num	|	seconds	|	Gyroscope Measurement, Mean, Y-Axis	  
time_Body_Gyroscope-Mean-Z	|	num	|	seconds	|	Gyroscope Measurement, Mean, Z-Axis	  
time_Body_GyroscopeJerk-Mean-X	|	num	|	seconds	|	Gyroscope Measurement, Jerk, Mean, X-Axis	  
time_Body_GyroscopeJerk-Mean-Y	|	num	|	seconds	|	Gyroscope Measurement, Jerk, Mean, Y-Axis	  
time_Body_GyroscopeJerk-Mean-Z	|	num	|	seconds	|	Gyroscope Measurement, Jerk, Mean, Z-Axis	  
time_Body_AccelerometerMagnitude-Mean	|	num	|	seconds	|	Body Accelerometer Measurement, Magnitude, Mean	  
time_Gravity_AccelerometerMagnitude-Mean	|	num	|	seconds	|	Gravity Accelerometer Measurement, Magnitude, Mean	  
time_Body_AccelerometerJerkMagnitude-Mean	|	num	|	seconds	|	Body Accelerometer Measurement, Jerk Magnitude, Mean	  
time_Body_GyroscopeMagnitude-Mean	|	num	|	seconds	|	Gyroscope Measurement, Magnitude, Mean	  
time_Body_GyroscopeJerkMagnitude-Mean	|	num	|	seconds	|	Gyroscope Measurement, Jerk Magnitude, Mean	  
frequency_Body_Accelerometer-Mean-X	|	num	|	Hz	|	Body Accelerometer Measurement, Mean, X-Axis	  
frequency_Body_Accelerometer-Mean-Y	|	num	|	Hz	|	Body Accelerometer Measurement, Mean, Y-Axis	  
frequency_Body_Accelerometer-Mean-Z	|	num	|	Hz	|	Body Accelerometer Measurement, Mean, Z-Axis	  
frequency_Body_AccelerometerJerk-Mean-X	|	num	|	Hz	|	Body Accelerometer Measurement, Jerk, Mean, X-Axis	  
frequency_Body_AccelerometerJerk-Mean-Y	|	num	|	Hz	|	Body Accelerometer Measurement, Jerk, Mean, Y-Axis	  
frequency_Body_AccelerometerJerk-Mean-Z	|	num	|	Hz	|	Body Accelerometer Measurement, Jerk, Mean, Z-Axis	  
frequency_Body_Gyroscope-Mean-X	|	num	|	Hz	|	Gyroscope Measurement, Mean, X-Axis	  
frequency_Body_Gyroscope-Mean-Y	|	num	|	Hz	|	Gyroscope Measurement, Mean, Y-Axis	  
frequency_Body_Gyroscope-Mean-Z	|	num	|	Hz	|	Gyroscope Measurement, Mean, Z-Axis	  
frequency_Body_AccelerometerMagnitude-Mean	|	num	|	Hz	|	Body Accelerometer Measurement, Magnitude, Mean	  
frequency_Body_BodyAccelerometerJerkMagnitude-Mean	|	num	|	Hz	|	Body Accelerometer Measurement, Jerk Magnitude, Mean	  
frequency_Body_BodyGyroscopeMagnitude-Mean	|	num	|	Hz	|	Body Gyroscope Measurement, Magnitude, Mean	  
frequency_Body_BodyGyroscopeJerkMagnitude-Mean	|	num	|	Hz	|	Body Gyroscope Measurement, Jerk Magnitude, Mean	  
time_Body_Accelerometer-StandardDev-X	|	num	|	seconds	|	Body Accelerometer Measurement, Standard Deviation, X-Axis	  
time_Body_Accelerometer-StandardDev-Y	|	num	|	seconds	|	Body Accelerometer Measurement, Standard Deviation, Y-Axis	  
time_Body_Accelerometer-StandardDev-Z	|	num	|	seconds	|	Body Accelerometer Measurement, Standard Deviation, Z-Axis	  
time_Gravity_Accelerometer-StandardDev-X	|	num	|	seconds	|	Gravity Accelerometer Measurement, Standard Deviation, X-Axis	  
time_Gravity_Accelerometer-StandardDev-Y	|	num	|	seconds	|	Gravity Accelerometer Measurement, Standard Deviation, Y-Axis	  
time_Gravity_Accelerometer-StandardDev-Z	|	num	|	seconds	|	Gravity Accelerometer Measurement, Standard Deviation, Z-Axis	  
time_Body_AccelerometerJerk-StandardDev-X	|	num	|	seconds	|	Body Accelerometer Measurement, Jerk, Standard Deviation, X-Axis	  
time_Body_AccelerometerJerk-StandardDev-Y	|	num	|	seconds	|	Body Accelerometer Measurement, Jerk, Standard Deviation, Y-Axis	  
time_Body_AccelerometerJerk-StandardDev-Z	|	num	|	seconds	|	Body Accelerometer Measurement, Jerk, Standard Deviation, Z-Axis	  
time_Body_Gyroscope-StandardDev-X	|	num	|	seconds	|	Gyroscope Measurement, Standard Deviation, X-Axis	  
time_Body_Gyroscope-StandardDev-Y	|	num	|	seconds	|	Gyroscope Measurement, Standard Deviation, Y-Axis	  
time_Body_Gyroscope-StandardDev-Z	|	num	|	seconds	|	Gyroscope Measurement, Standard Deviation, Z-Axis	  
time_Body_GyroscopeJerk-StandardDev-X	|	num	|	seconds	|	Gyroscope Measurement, Jerk, Standard Deviation, X-Axis	  
time_Body_GyroscopeJerk-StandardDev-Y	|	num	|	seconds	|	Gyroscope Measurement, Jerk, Standard Deviation, Y-Axis	  
time_Body_GyroscopeJerk-StandardDev-Z	|	num	|	seconds	|	Gyroscope Measurement, Jerk, Standard Deviation, Z-Axis	  
time_Body_AccelerometerMagnitude-StandardDev	|	num	|	seconds	|	Body Accelerometer Measurement, Magnitude, Standard Deviation	  
time_Gravity_AccelerometerMagnitude-StandardDev	|	num	|	seconds	|	Gravity Accelerometer Measurement, Magnitude, Standard Deviation	  
time_Body_AccelerometerJerkMagnitude-StandardDev	|	num	|	seconds	|	Body Accelerometer Measurement, Jerk Magnitude, Standard Deviation	  
time_Body_GyroscopeMagnitude-StandardDev	|	num	|	seconds	|	Gyroscope Measurement, Magnitude, Standard Deviation	  
time_Body_GyroscopeJerkMagnitude-StandardDev	|	num	|	seconds	|	Gyroscope Measurement, Jerk Magnitude, Standard Deviation	  
frequency_Body_Accelerometer-StandardDev-X	|	num	|	Hz	|	Body Accelerometer Measurement, Standard Deviation, X-Axis	  
frequency_Body_Accelerometer-StandardDev-Y	|	num	|	Hz	|	Body Accelerometer Measurement, Standard Deviation, Y-Axis	  
frequency_Body_Accelerometer-StandardDev-Z	|	num	|	Hz	|	Body Accelerometer Measurement, Standard Deviation, Z-Axis	  
frequency_Body_AccelerometerJerk-StandardDev-X	|	num	|	Hz	|	Body Accelerometer Measurement, Jerk, Standard Deviation, X-Axis	  
frequency_Body_AccelerometerJerk-StandardDev-Y	|	num	|	Hz	|	Body Accelerometer Measurement, Jerk, Standard Deviation, Y-Axis	  
frequency_Body_AccelerometerJerk-StandardDev-Z	|	num	|	Hz	|	Body Accelerometer Measurement, Jerk, Standard Deviation, Z-Axis	  
frequency_Body_Gyroscope-StandardDev-X	|	num	|	Hz	|	Gyroscope Measurement, Standard Deviation, X-Axis	  
frequency_Body_Gyroscope-StandardDev-Y	|	num	|	Hz	|	Gyroscope Measurement, Standard Deviation, Y-Axis	  
frequency_Body_Gyroscope-StandardDev-Z	|	num	|	Hz	|	Gyroscope Measurement, Standard Deviation, Z-Axis	  
frequency_Body_AccelerometerMagnitude-StandardDev	|	num	|	Hz	|	Body Accelerometer Measurement, Magnitude, Standard Deviation	  
frequency_Body_BodyAccelerometerJerkMagnitude-StandardDev	|	num	|	Hz	|	Body Accelerometer Measurement, Jerk Magnitude, Standard Deviation	  
frequency_Body_BodyGyroscopeMagnitude-StandardDev	|	num	|	Hz	|	Gyroscope Measurement, Magnitude, Standard Deviation	  
frequency_Body_BodyGyroscopeJerkMagnitude-StandardDev	|	num	|	Hz	|	Gyroscope Measurement, Jerk Magnitude, Standard Deviation	  
   
