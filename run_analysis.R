merge_datasets <- function() {
  #read data from file
  training_set <- read.table("./data/train/X_train.txt")
  test_set <- read.table("./data/test/X_test.txt")

  #read data labels from file
  training_labels <- read.table("./data/train/y_train.txt")
  test_labels <- read.table("./data/test/y_test.txt")

  # merge y values
  labels <- rbind(training_labels, test_labels)

  # read header from file
  header <- read.table("./data/features.txt")
  # header <- c(header[,"V2"], "y") # add labels column to header

  # combine training set and test set
  data_set <- rbind(training_set, test_set)

  #add header to data
  colnames(data_set) <- header[,"V2"]

  # add label values to dataset
  data_set["y"] <- labels

  return(data_set)
}

filter_dataset <- function(rawdata) {
  # filter names that are similar to mean() or std()
  rd <- rawdata[grep("((mean|std){1}(freq){0,}[(][)])",names(rawdata))]

  # keep label values in data frame
  rd["y"] <- rawdata["y"]

  return(rd)
}

replace_activities_numbers_for_names <- function(rawdata) {
  activity.labels <- read.table("./data/activity_labels.txt")

  # replace activities index for names
  rawdata[rawdata[,"y"]==1,"y"] <- "WALKING"
  rawdata[rawdata[,"y"]==2,"y"] <- "WALKING_UPSTAIRS"
  rawdata[rawdata[,"y"]==3,"y"] <- "WALKING_DOWNSTAIRS"
  rawdata[rawdata[,"y"]==4,"y"] <- "SITTING"
  rawdata[rawdata[,"y"]==5,"y"] <- "STANDING"
  rawdata[rawdata[,"y"]==6,"y"] <- "LAYING"

  return(rawdata)
}

run_analysis <- function() {
  dataset <- merge_datasets()
  filtered_dataset <- filter_dataset(dataset)
  filtered_dataset <- replace_activities_numbers_for_names(filtered_dataset)
  
}

download_data <- function() {
  file_url <- 'http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  download.file(file_url, destfile="./data/human_activity_recognition.zip")
}