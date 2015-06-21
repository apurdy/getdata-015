## Codebook

The following data set description is reproduced from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) data set description. Please refer to this page for the original data set descriptions, citation information and relevant literature.

### Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Features Description
------------------------

The prefixes 't' and 'f' denote features in the time-domain and frequency-domain respectively. 
The features are generated from 3-axial accelerometer and gyroscope measurements (x, y and z components).

See the file `features_info.txt` in the data set folder for more detailed descriptions of the features and the signal processing applied to these measurements.


#### Descriptive Features

| Feature name       | Description
---------------------|------------------------------------------
activity             | activity subject performed
subject              | subject id

#### Time Domain features
| Feature name       | Description
---------------------|------------------------------------------
tbodyacc.mean.x      | mean body acceleration in the x direction
tbodyacc.mean.y      | mean body acceleration in the y direction
tbodyacc.mean.z      | mean body acceleration in the z direction
tbodyacc.std.x       | standard deviation of body acceleration in the x direction
tbodyacc.std.y       | standard deviation of body acceleration in the y direction
tbodyacc.std.z       | standard deviation of body acceleration in the z direction
tgravityacc.mean.x   | mean body acceleration time in the x direction
tgravityacc.mean.y   | mean gravity acceleration time in the y direction
tgravityacc.mean.z   | mean gravity acceleration time in the z direction
tgravityacc.std.x    | standard deviation of gravity acceleration time in the x direction
tgravityacc.std.y    | standard deviation of gravity acceleration time in the x direction
tgravityacc.std.z    | standard deviation of gravity acceleration time in the z direction
tbodyaccjerk.mean.x  | mean body acceleration jerk time in the x direction
tbodyaccjerk.mean.y  | mean body acceleration jerk time in the y direction
tbodyaccjerk.mean.z  | mean body acceleration jerk time in the z direction
tbodyaccjerk.std.x   | standard deviation of body acceleration jerk time in the x direction
tbodyaccjerk.std.y   | standard deviation of body acceleration jerk time in the y direction
tbodyaccjerk.std.z   | standard deviation of body acceleration jerk time in the z direction
tbodygyro.mean.x     | mean body gyroscope signal in the x direction
tbodygyro.mean.y     | mean body gyroscope signal in the y direction
tbodygyro.mean.z     | mean body gyroscope signal in the z direction
tbodygyro.std.x      | std of body gyroscope signal in the x direction
tbodygyro.std.y      | std of body gyroscope signal in the y direction
tbodygyro.std.z      | std of body gyroscope signal in the z direction
tbodygyrojerk.mean.x | mean gyroscopic jerk time for body in the x direction
tbodygyrojerk.mean.y | mean gyroscopic jerk time for body in the y direction
tbodygyrojerk.mean.z | mean gyroscopic jerk time for body in the z direction
tbodygyrojerk.std.x  | standard deviation of gyroscopic jerk time for body in the x direction
tbodygyrojerk.std.y  | standard deviation of gyroscopic jerk time for body in the x direction
tbodygyrojerk.std.z  | standard deviation of gyroscopic jerk time for body in the x direction
tbodyaccmag.mean     | mean magnitude of body acceleration
tbodyaccmag.std      | standard deviation of magnitude of body acceleration
tgravityaccmag.mean  | mean magnitude of gravity acceleration
tgravityaccmag.std   | standard deviation of magnitude of gravity acceleration
tbodyaccjerkmag.mean | mean magnitude of body acceleration jerk
tbodyaccjerkmag.std  | standard deviation of magnitude of body acceleration jerk
tbodygyromag.mean    | mean magnitude of gyroscopic body acceleration
tbodygyromag.std     | standard deviation of magnitude of gyroscopic body acceleration
tbodygyrojerkmag.mean | mean magnitude of gyroscopic body acceleration jerk
tbodygyrojerkmag.std  | standard deviation of magnitude of gyroscopic body acceleration

#### Frequency domain features
 Feature name   | Description
----------------|-----------------------------------------------
fbodyacc.mean.x | mean body acceleration time in the x direction
fbodyacc.mean.y | mean body acceleration time in the y direction
fbodyacc.mean.z | mean body acceleration time in the z direction
fbodyacc.std.x | standard deviation of body acceleration time in the x direction
fbodyacc.std.y | standard deviation of body acceleration time in the y direction
fbodyacc.std.z | standard deviation of body acceleration time in the z direction
fbodyaccjerk.mean.x | mean body acceleration jerk time in the x direction
fbodyaccjerk.mean.y | mean body acceleration jerk time in the y direction
fbodyaccjerk.mean.z | mean body acceleration jerk time in the z direction
fbodyaccjerk.std.x  | standard deviation of body acceleration jerk time in the x direction
fbodyaccjerk.std.y  | standard deviation of body acceleration jerk time in the y direction
fbodyaccjerk.std.z  | standard deviation of body acceleration jerk time in the z direction
fbodygyro.mean.x | mean body gyroscope signal in the x direction
fbodygyro.mean.y | mean body gyroscope signal in the y direction
fbodygyro.mean.z | mean body gyroscope signal in the z direction
fbodygyro.std.x | std of body gyroscope signal in the x direction
fbodygyro.std.y | std of body gyroscope signal in the y direction
fbodygyro.std.z | std of body gyroscope signal in the z direction
fbodyaccmag.mean | mean magnitude of body acceleration
fbodyaccmag.std | standard deviation of magnitude of body acceleration
fbodyaccjerkmag.mean | mean magnitude of body acceleration jerk
fbodyaccjerkmag.std  | standard deviation of magnitude of body acceleration jerk
fbodygyromag.mean | mean magnitude of gyroscopic body acceleration
fbodygyromag.std  | standard deviation of magnitude of gyroscopic body acceleration
fbodygyrojerkmag.mean | mean magnitude of gyroscopic body acceleration jerk
fbodygyrojerkmag.std | standard deviation of magnitude of gyroscopic body acceleration
