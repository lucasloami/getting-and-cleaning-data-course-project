merge_datasets <- function() {
  training_set <- read.table("./data/train/X_train.txt")
  test_set <- read.table("./data/test/X_test.txt")
  header <- read.table("./data/features.txt")
  data_set <- rbind(training_set, test_set)
  colnames(data_set) <- header[,"V2"]
  return(data_set)
}

filter_dataset <- function(rawdata) {
  rd <- rawdata[grep("((mean|std){1}(freq){0,}[(][)])",names(rawdata))]
  return(rd)
}

run_analysis <- function() {
  dataset <- merge_datasets()
  filtered_dataset <- filter_dataset(dataset)
}

download_data <- function() {
  file_url <- 'http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  download.file(file_url, destfile="./data/human_activity_recognition.zip")
}