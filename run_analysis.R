library(reshape2)

# Load the datasets
test_subject <- read.table("./test/subject_test.txt")
test_x <- read.table("./test/X_test.txt")
test_y <- read.table("./test/y_test.txt")

train_subject <- read.table("./train/subject_train.txt")
train_x <- read.table("./train/X_train.txt")
train_y <- read.table("./train/y_train.txt")

features <- read.table("./features.txt")
activity_labels <- read.table("./activity_labels.txt")

# Merge the test and train subject datasets
subject <- rbind(test_subject, train_subject)
colnames(subject) <- "subject"

# Merge the test and train labels and then apply the textual labels
label <- rbind(test_y, train_y)
label <- merge(label, activity_labels, by=1)[,2]

# Merge the test and train dataset ...
data <- rbind(test.x, train.x)
colnames(data) <- features[, 2]

# Merge all three datasets
data <- cbind(subject, label, data)

# Create a smaller dataset containing only the mean and std variables
search <- grep("-mean|-std", colnames(data))
data_mean_std <- data[,c(1,2,search)]

# Derive the means, grouped by subject/label
melted = melt(data_mean_std, id.var = c("subject", "label"))
means = dcast(melted , subject + label ~ variable, mean)

# Save the resulting dataset
write.table(means, file="./tidy_data.txt")
