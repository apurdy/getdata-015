## Getting and Cleaning Data Course Project

This code converts the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) from the UCI Machine Learning Repository into a single dataset according to the tidy data principles outlined in [Wickham, Hadley. "Tidy data."](http://www.jstatsoft.org/v59/i10/paper)

The script accomplishes this by doing the following:

  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Instructions

1. Download and extract the data set. Place this script in the same direectory as the extracted data set.
2. Change the working directory to the folder contained this script using `setwd`.
3. Run the script `run_analysis.r`. The script will generate an additional file `tidy.txt` according to step 5 above.

### Dependencies

This script uses the[`reshape2`](http://cran.r-project.org/web/packages/reshape2/index.html) package.