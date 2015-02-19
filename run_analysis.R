# load the dplyr library for use later
library(dplyr)

# read in the files from directory
test_files <- list.files(paste(getwd(), "/UCI HAR Dataset/test", sep=""), full.names=T)
train_files <- list.files(paste(getwd(), "/UCI HAR Dataset/train", sep=""), full.names=T)
features <- scan(paste(getwd(), "/UCI HAR Dataset/features.txt", sep=""), what="character")
activities <- scan(paste(getwd(), "/UCI HAR Dataset/activity_labels.txt", sep=""), what="character")

#discard the Inertial Signals directories; they are irrelevant
test_files <- test_files[2:4]
train_files <- train_files[2:4]

# get rid of the numbers in features and activities. Also, fix grammar.
features_names <- split(features, 1:2)
activities_names <- split(activities, 1:2)
features_names <- features_names$"2"
activities_names <- activities_names$"2"
activities_names[6] <- "LYING"

# read in test data and bind to subjects and activities
test_data <- read.table(test_files[2])
train_data <- read.table(train_files[2])
all_data <- rbind(test_data, train_data)

# get only the columns that measure the mean or the standard deviation
meanstd <- grepl("mean\\(", features_names)|grepl("std", features_names)
all_data <- all_data[meanstd]

# combine subject rows
test_subjects <- read.table(test_files[1])
train_subjects <- read.table(train_files[1])
all_subjects <- rbind(test_subjects, train_subjects)

# combine activity rows
test_activities <- read.table(test_files[3])
train_activities <- read.table(train_files[3])
all_activities <- rbind(test_activities, train_activities)

# combine subjects, activities, and the data
data <- cbind(all_subjects, all_activities, all_data)

# name the columns; be sure to subset only relevant feature names.  Sort.
names(data) <- c("Subject","Activity", features_names[meanstd])
data <- arrange(data, Subject, Activity)

subject_id <- c()
col_means <- c()

# Find the mean of each column, for each activity performed by each subject
for (i in unique(data$Subject)){
     for (j in unique(data$Activity)){
          temp_data <- filter(data, Subject==i, Activity==j)
          temp_mean <- colMeans(temp_data[3:ncol(temp_data)])
          subject_id <- rbind(subject_id, c(i, activities_names[j]))
          col_means <- rbind(col_means, temp_mean)
          }
     }

final_data <- data.frame(subject_id, col_means)

names(final_data) <- c("Subject", "Activity", features_names[meanstd])
write.table(final_data, "human_smartphone_activity.txt", sep="\t", col.names=T,
            row.names=F)