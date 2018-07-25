if(!require("data.table")) {
  install.packages("data.table")
}

if(!require("reshape2")) {
  install.packages("reshape2")
}

library("data.table")
library("reshape2")

# Load: Activity Labels
activity_labels <- read.table("activity_labels.txt")[,2]

# Load: data column names
features <- read.table("features.txt")[,2]

# Extract only the measurements on the mean and the standard deviation for each measurement
extract_features <- grepl("mean|std", features)

# Load and process X_test & y_test data
X_test <- read.table("./test/X_test.txt")
Y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

names(X_test) = features

# Extract only the measurements on the mean and standard deviation for each measurement.
X_test = X_test[ ,extract_features]

Y_test[,2] = activity_labels[Y_test[,1]]
names(Y_test) = c("Activity_ID", "Activity_Label")
names(subject_test) = "subject"

# Bind data
test_data <- cbind(subject_test, X_test, Y_test)

# Load and process X_train & y_train data.
X_train <- read.table("Train/X_train.txt")
Y_train <- read.table("Train/y_train.txt")
subject_train <- read.table("Train/subject_train.txt")

names(X_train) = features

# Extract only the measurements on the mean and standard deviation for each measurement.
X_train = X_train[,extract_features]

# Load Activity Data
Y_train[,2] = activity_labels[Y_train[,1]]
names(Y_train) = c("Activity_ID", "Activity_Label")
names(subject_train) = "subject"

# Bind Data
train_data <- cbind(subject_train, X_train, Y_train)

# Merge test and train data
data = rbind(test_data, train_data)

id_labels = c("subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(data), id_labels)
melt_data = melt(data, id = id_labels, measure.vars = data_labels)

# Apply mean function to dataset using dcast function
tidy_data = dcast(melt_data, subject + Activity_Label ~ variable, mean)

write.table(tidy_data, file = "./tidy_data.txt", row.names = FALSE)