# Project CodeBook

## General information

* All the Fourier signals collected in the dataset are for 128 samples
at 50 Hz.

* The data was collected [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

## Merging and cleaning data

* Merge:

** adding rows: the "training_set.txt" and the "test_set.txt" were merged using the rbind function because in this way we prevent some problem with reordering the data. The "y_train.txt" and the "y_test.txt" were merged using the rbind function for the same reason. The
"subject_train.txt" and the "subject_test.txt" were merged using the rbind function

** adding columns: the "y" column and the "subject_id" column were added to the dataset
through the following command: final_dataset$NEW_COLUMN_NAME <- NEW_COLUMN_NAME_VALUES, where
NEW_COLUMN_NAME can be replaced by "y" or "subject_id" and NEW_COLUMN_NAME_VALUES can be
replaced by the vector containing the respective values

* removing unused columns: the grep function was used to select only the required columns
in the dataset. The ones required contains one of the following substrings: "mean()" or "std()"

* column names: all the column names present in the final dataset are the same ones that
exist in the "features.txt" file with the same meaning. Moreover, that are two extra
columns in the final dataset, which are described in the section below.



## Variables description

In this section I will describe only the variables that are not present in the
"features.txt", in other words, the ones I created to finish the assignment.
All the other variables existing in my final dataset follow the exact same rules
(in terms of name and meaning) as the ones present in the data acquired in the
link provided in the General Section.

* **y**: Activity Labels
  Possible values
    WALKING
    WALKING_UPSTAIRS
    WALKING_DOWNSTAIRS
    SITTING
    STANDING
    LAYING

* **subject_id**: Each row identifies the subject who performed the activity for each window sample.
  Possible values:
    1 to 30

* **all the other columns**: are the same ones present in the "features.txt" file and 
contain floating values.

