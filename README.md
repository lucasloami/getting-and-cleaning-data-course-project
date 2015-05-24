# Getting and Cleaning Data
## Course Project

### Script explained

This file explains how the script run_analysis.R works to complete
the course project. The file contains the following functions, that are
run in the script in the respective order:

* **merge_datasets**: merges the traininig dataset and the test data set
as well as add the column names to the final dataset according to the
features' names given in the "features.txt"

* **filter_dataset**: filter only the required columns in the dataset. In
other words, select all the columns that have one of those two substrings:
"mean()" and "std()"

* **add_activity_labels_column**: merge the files y_train.txt and y_test.txt
into a vector that represents the training data's labels. Moreover,
appends this vector to a new column in the final dataset called "y"

* **add_subject_column**: merge the files subject_train.txt and subject_test.txt
into a vector that represents the subjects that execute each row in the
dataset. Moreover, appends this vector to a new column in final dataset called
"subject_id"

* **replace_activities_numbers_for_names**: given all the activity indexes in the
final dataset's column "y", this function replace them by the name of the
respective activity according to the mapping described in the "activity_labels.txt"

* **create_final_dataset**: create tidy data based grouping data according to
"y" and "subject_id" and summarise data using mean function to all the variables

* **run_analysis**: main function of this script. It calls all the previous functions
and generate the final tidy data file.

* **download_data**: auxiliar function that download the zip data required to
do the project

### Final dataset content

The final dataset is built based on the existing feature names described in "features.txt".
So, even if the column in the final tidy data is called "tBodyAcc-std()-X", the content
of each row represents the average value of this column grouped by subject_id and "y" 
(labels)