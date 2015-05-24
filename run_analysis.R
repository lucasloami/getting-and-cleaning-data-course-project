merge_datasets <- function() {
  training_set <- read.table("./data/train/X_train.txt")
  test_set <- read.table("./data/test/X_test.txt")
  head(training_set)
  summary(test_set)
}

download_data <- function() {
  file_url <- 'http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  download.file(file_url, destfile="./data/human_activity_recognition.zip")
}