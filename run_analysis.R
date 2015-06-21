# Getting and Cleaning Data Course Project

# Merge data --------------------------------------------------------------
# This script should be placed along with the UCI Dataset folder in the current
# working directory

x.train <- read.table(file.path('UCI HAR Dataset', 'train', 'X_train.txt'))
x.test <- read.table(file.path('UCI HAR Dataset', 'test', 'X_test.txt'))

y.train <- read.table(file.path('UCI HAR Dataset', 'train', 'y_train.txt'))
y.test <- read.table(file.path('UCI HAR Dataset', 'test', 'y_test.txt'))

subject.train <- read.table(file.path('UCI HAR Dataset', 'train', 'subject_train.txt'))
subject.test <- read.table(file.path('UCI HAR Dataset', 'test', 'subject_test.txt'))

feature.names <- read.table(file.path('UCI HAR Dataset', 'features.txt'),
                            row.names=1, col.names=c('row_id', 'feature'))
activity.labels <- read.table(file.path('UCI HAR Dataset', 'activity_labels.txt'),
                              col.names=c('levels', 'labels'))

# Merge training and test sets into one dataset
x <- rbind(x.train, x.test)
y <- rbind(y.train, y.test)
subject <- rbind(subject.train, subject.test)

# Extract only measurements on mean and std ------------------------------------

# Create a logical vector with the indices of  features that contain with 
# either mean() or std()
mask <- grepl('mean\\(\\)|std\\(\\)', feature.names$feature)

# Remove parentheses from feature names
feature.names$feature <- gsub('\\(|\\)', '', feature.names$feature)
# Replace commans and hyphens with periods
feature.names$feature <- gsub('-|,', '\\.', feature.names$feature)
# Make variable names lowercase
feature.names$feature <- lapply(feature.names$feature, function(x) {tolower(x)})
                                
masked.features <- feature.names$feature[mask]
# Drop unused columns
x <- x[, mask]
# Use descriptive variable names
colnames(x) <- masked.features

# Use descriptive activity names ------------------------------------------

colnames(y) <- c('level')
activity <- factor(y$level, 
                   levels = activity.labels$levels,
                   labels = activity.labels$labels)

# Appropriately label the data set with descriptive variable name --------

colnames(subject) <- 'subject_id'
x$activity <- activity
x$subject <- subject$subject_id

# Average of each variable for each activity and each subject
library(reshape2)
xMelt <- melt(x, id=c('subject', 'activity'), measure.vars=masked.features)
tidy.wide <- dcast(xMelt, activity + subject ~ variable, mean)

# Write data to disk
write.table(tidy.wide, 'tidy.txt', row.name=F)

