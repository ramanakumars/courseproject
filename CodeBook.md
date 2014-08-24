========================
Course Project Code Book
	  Ramanakumar Sankar
========================

After retreiving specific variables from the raw data, the average of the variable was found for each activity for each subject. 
A list of variables in the clean dataset can be found below:

=============================
Variables used in the dataset
=============================
Variable name                  Description                                                  Values
subject_id                     Identification number of subject                             Integer value 1 through 30
activity_id                    An integer identification for each activity                  1: WALKING 2: WALKING_UPSTAIRS 3: WALKING_DOWNSTAIRS 4: SITTING 5: STANDING 6: LAYING
activity_name                  Name of the activity corresponding to value in activity_id   Same as above
tBodyAcc.mean.X                Average Mean value of tBodyAcc along X axis                  Normalized float between -1 and 1
tBodyAcc.mean.Y                Average Mean value of tBodyAcc along Y axis                  Normalized float between -1 and 1
tBodyAcc.mean.Z                Average Mean value of tBodyAcc along Z axis                  Normalized float between -1 and 1
tBodyAcc.std.X                 Average Standard deviation of tBodyAcc along X axis          Normalized float between -1 and 1
tBodyAcc.std.Y                 Average Standard deviation of tBodyAcc along Y axis          Normalized float between -1 and 1
tBodyAcc.std.Z                 Average Standard deviation of tBodyAcc along Z axis          Normalized float between -1 and 1
tGravityAcc.mean.X             Average Mean value of tGravityAcc along X axis               Normalized float between -1 and 1
tGravityAcc.mean.Y             Average Mean value of tGravityAcc along Y axis               Normalized float between -1 and 1
tGravityAcc.mean.Z             Average Mean value of tGravityAcc along Z axis               Normalized float between -1 and 1
tGravityAcc.std.X              Average Standard deviation of tGravityAcc along X axis       Normalized float between -1 and 1
tGravityAcc.std.Y              Average Standard deviation of tGravityAcc along Y axis       Normalized float between -1 and 1
tGravityAcc.std.Z              Average Standard deviation of tGravityAcc along Z axis       Normalized float between -1 and 1
tBodyAccJerk.mean.X            Average Mean value of tBodyAccJerk along X axis              Normalized float between -1 and 1
tBodyAccJerk.mean.Y            Average Mean value of tBodyAccJerk along Y axis              Normalized float between -1 and 1
tBodyAccJerk.mean.Z            Average Mean value of tBodyAccJerk along Z axis              Normalized float between -1 and 1
tBodyAccJerk.std.X             Average Standard deviation of tBodyAccJerk along X axis      Normalized float between -1 and 1
tBodyAccJerk.std.Y             Average Standard deviation of tBodyAccJerk along Y axis      Normalized float between -1 and 1
tBodyAccJerk.std.Z             Average Standard deviation of tBodyAccJerk along Z axis      Normalized float between -1 and 1
tBodyGyro.mean.X               Average Mean value of tBodyGyro along X axis                 Normalized float between -1 and 1
tBodyGyro.mean.Y               Average Mean value of tBodyGyro along Y axis                 Normalized float between -1 and 1
tBodyGyro.mean.Z               Average Mean value of tBodyGyro along Z axis                 Normalized float between -1 and 1
tBodyGyro.std.X                Average Standard deviation of tBodyGyro along X axis         Normalized float between -1 and 1
tBodyGyro.std.Y                Average Standard deviation of tBodyGyro along Y axis         Normalized float between -1 and 1
tBodyGyro.std.Z                Average Standard deviation of tBodyGyro along Z axis         Normalized float between -1 and 1
tBodyGyroJerk.mean.X           Average Mean value of tBodyGyroJerk along X axis             Normalized float between -1 and 1
tBodyGyroJerk.mean.Y           Average Mean value of tBodyGyroJerk along Y axis             Normalized float between -1 and 1
tBodyGyroJerk.mean.Z           Average Mean value of tBodyGyroJerk along Z axis             Normalized float between -1 and 1
tBodyGyroJerk.std.X            Average Standard deviation of tBodyGyroJerk along X axis     Normalized float between -1 and 1
tBodyGyroJerk.std.Y            Average Standard deviation of tBodyGyroJerk along Y axis     Normalized float between -1 and 1
tBodyGyroJerk.std.Z            Average Standard deviation of tBodyGyroJerk along Z axis     Normalized float between -1 and 1
tBodyAccMag.mean               Average Mean value of tBodyAccMag                            Normalized float between -1 and 1
tBodyAccMag.std                Average Standard deviation of tBodyAccMag                    Normalized float between -1 and 1
tGravityAccMag.mean            Average Mean value of tGravityAccMag                         Normalized float between -1 and 1
tGravityAccMag.std             Average Standard deviation of tGravityAccMag                 Normalized float between -1 and 1
tBodyAccJerkMag.mean           Average Mean value of tBodyAccJerkMag                        Normalized float between -1 and 1
tBodyAccJerkMag.std            Average Standard deviation of tBodyAccJerkMag                Normalized float between -1 and 1
tBodyGyroMag.mean              Average Mean value of tBodyGyroMag                           Normalized float between -1 and 1
tBodyGyroMag.std               Average Standard deviation of tBodyGyroMag                   Normalized float between -1 and 1
tBodyGyroJerkMag.mean          Average Mean value of tBodyGyroJerkMag                       Normalized float between -1 and 1
tBodyGyroJerkMag.std           Average Standard deviation of tBodyGyroJerkMag               Normalized float between -1 and 1
fBodyAcc.mean.X                Average Mean value of fBodyAcc along X axis                  Normalized float between -1 and 1
fBodyAcc.mean.Y                Average Mean value of fBodyAcc along Y axis                  Normalized float between -1 and 1
fBodyAcc.mean.Z                Average Mean value of fBodyAcc along Z axis                  Normalized float between -1 and 1
fBodyAcc.std.X                 Average Standard deviation of fBodyAcc along X axis          Normalized float between -1 and 1
fBodyAcc.std.Y                 Average Standard deviation of fBodyAcc along Y axis          Normalized float between -1 and 1
fBodyAcc.std.Z                 Average Standard deviation of fBodyAcc along Z axis          Normalized float between -1 and 1
fBodyAcc.meanFreq.X            Average Mean frequency value of fBodyAcc along X axis        Normalized float between -1 and 1
fBodyAcc.meanFreq.Y            Average Mean frequency value of fBodyAcc along Y axis        Normalized float between -1 and 1
fBodyAcc.meanFreq.Z            Average Mean frequency value of fBodyAcc along Z axis        Normalized float between -1 and 1
fBodyAccJerk.mean.X            Average Mean value of fBodyAccJerk along X axis              Normalized float between -1 and 1
fBodyAccJerk.mean.Y            Average Mean value of fBodyAccJerk along Y axis              Normalized float between -1 and 1
fBodyAccJerk.mean.Z            Average Mean value of fBodyAccJerk along Z axis              Normalized float between -1 and 1
fBodyAccJerk.std.X             Average Standard deviation of fBodyAccJerk along X axis      Normalized float between -1 and 1
fBodyAccJerk.std.Y             Average Standard deviation of fBodyAccJerk along Y axis      Normalized float between -1 and 1
fBodyAccJerk.std.Z             Average Standard deviation of fBodyAccJerk along Z axis      Normalized float between -1 and 1
fBodyAccJerk.meanFreq.X        Average Mean frequency value of fBodyAccJerk along X axis    Normalized float between -1 and 1
fBodyAccJerk.meanFreq.Y        Average Mean frequency value of fBodyAccJerk along Y axis    Normalized float between -1 and 1
fBodyAccJerk.meanFreq.Z        Average Mean frequency value of fBodyAccJerk along Z axis    Normalized float between -1 and 1
fBodyGyro.mean.X               Average Mean value of fBodyGyro along X axis                 Normalized float between -1 and 1
fBodyGyro.mean.Y               Average Mean value of fBodyGyro along Y axis                 Normalized float between -1 and 1
fBodyGyro.mean.Z               Average Mean value of fBodyGyro along Z axis                 Normalized float between -1 and 1
fBodyGyro.std.X                Average Standard deviation of fBodyGyro along X axis         Normalized float between -1 and 1
fBodyGyro.std.Y                Average Standard deviation of fBodyGyro along Y axis         Normalized float between -1 and 1
fBodyGyro.std.Z                Average Standard deviation of fBodyGyro along Z axis         Normalized float between -1 and 1
fBodyGyro.meanFreq.X           Average Mean frequency value of fBodyGyro along X axis       Normalized float between -1 and 1
fBodyGyro.meanFreq.Y           Average Mean frequency value of fBodyGyro along Y axis       Normalized float between -1 and 1
fBodyGyro.meanFreq.Z           Average Mean frequency value of fBodyGyro along Z axis       Normalized float between -1 and 1
fBodyAccMag.mean               Average Mean value of fBodyAccMag                            Normalized float between -1 and 1
fBodyAccMag.std                Average Standard deviation of fBodyAccMag                    Normalized float between -1 and 1
fBodyAccMag.meanFreq           Average Mean frequency value of fBodyAccMag                  Normalized float between -1 and 1
fBodyBodyAccJerkMag.mean       Average Mean value of fBodyBodyAccJerkMag                    Normalized float between -1 and 1
fBodyBodyAccJerkMag.std        Average Standard deviation of fBodyBodyAccJerkMag            Normalized float between -1 and 1
fBodyBodyAccJerkMag.meanFreq   Average Mean frequency value of fBodyBodyAccJerkMag          Normalized float between -1 and 1
fBodyBodyGyroMag.mean          Average Mean value of fBodyBodyGyroMag                       Normalized float between -1 and 1
fBodyBodyGyroMag.std           Average Standard deviation of fBodyBodyGyroMag               Normalized float between -1 and 1
fBodyBodyGyroMag.meanFreq      Average Mean frequency value of fBodyBodyGyroMag             Normalized float between -1 and 1
fBodyBodyGyroJerkMag.mean      Average Mean value of fBodyBodyGyroJerkMag                   Normalized float between -1 and 1
fBodyBodyGyroJerkMag.std       Average Standard deviation of fBodyBodyGyroJerkMag           Normalized float between -1 and 1
fBodyBodyGyroJerkMag.meanFreq  Average Mean frequency value of fBodyBodyGyroJerkMag         Normalized float between -1 and 1
