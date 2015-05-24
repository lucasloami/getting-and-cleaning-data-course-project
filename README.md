# Getting and Cleaning Data
## Course Project

This file explains how the script run_analysis.R works to complete
the course project.

The file contains the following functions, that are run in the script
in the respective order:

a. merge_datasets: merges the traininig dataset and the test data set
as well as add the column names to the final dataset according to the
features' names given in the "features.txt"

b. filter_dataset: filter only the required columns in the dataset. In
other words, select all the columns that have one of those two substrings:
"mean()" and "std()"

c. add_activity_labels_column: merge the files y_train.txt and y_test.txt
into a vector that represents the training data's labels. Moreover,
appends this vector to a new column in the final dataset called "y"

d. add_subject_column: merge the files subject_train.txt and subject_test.txt
into a vector that represents the subjects that execute each row in the
dataset. Moreover, appends this vector to a new column in final dataset called
"subject_id"

e. replace_activities_numbers_for_names
f. create_final_dataset
g. run_analysis

h. download_data: auxiliar function that download the zip data required to
do the project