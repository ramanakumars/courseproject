run_analysis <- function(dir) {
  setwd(dir)
  
  # Get list of features
  
  features <- read.table('features.txt',header=FALSE)
  
  print("Getting test files...")
  subject_test <- read.table('test/subject_test.txt',header=FALSE)
  y_test <- read.table('test/y_test.txt',header=FALSE)
  x_test <- read.table('test/X_test.txt',header=FALSE)
  
  print("Getting train files...")
  subject_train <- read.table('train/subject_train.txt',header=FALSE)
  y_train <- read.table('train/y_train.txt',header=FALSE)
  x_train <- read.table('train/X_train.txt',header=FALSE)
  
  
  print("Getting relevant features...")
  
  # Getting all variables with mean() or std()
  
  rel_features <- grep('-mean()|-std()',features[,2])
  print(paste("Got",length(rel_features),"features!"))
  old_rel_features_names <- features[rel_features,2]
  
  # Creating empty vector to store modified variable names
  rel_features_names = c()
  
  for(feature in old_rel_features_names) {
    
    # Removing '-','_' or '()' characters
    # Variable names are in lowerCamelCase with .mean and .AXIS
    # e.g. tBodyAcc.mean.X
    # signifies mean of tBodyAcc feature in the X direction
    
    new_feature <- gsub("-|_| ",".",feature)
    new_feature <- gsub("\\()","",new_feature)
    rel_features_names <- rbind(rel_features_names,new_feature)
  }
  
  print("Printing relevant features list to rel_features.txt")
  write.table(rel_features_names,'../rel_features.txt',row.names=FALSE,col.names=FALSE)
  
  # Creating vector of column names for final data frame
  
  col_names <-  rbind('subject_id','activity_id','activity_name',matrix(rel_features_names[],ncol=1))
  
  # Getting relevent columns from test and train datasets
  
  x_test_rel <- x_test[,rel_features]
  x_train_rel <- x_train[,rel_features]
  
  # Creating a 'giant', compiled data set for test and train
  
  giant_test <- cbind(subject_test,y_test,x_test_rel)
  giant_train <- cbind(subject_train,y_train,x_train_rel)
  
  # Compiling both test and train
  
  giant_data <- rbind(giant_test,giant_train)
  
  # List of subjects and activities
  
  subjects <- 1:30
  activities <- 1:6
  activity_names <- c('WALKING','WALKING_UPSTAIRS','WALKING_DOWNSTAIRS','SITTING','STANDING','LAYING')
  
  # select only features columns for average
  col_vals <- 3:81
  
  # Initializing final data frame
  
  final_dat <- data.frame()
  
  # Looping through each activity for each subject to get
  # average values for each relevent feature
  
  for(subject in subjects) {
    print(paste("Getting features: Subject",subject))
    subj_dat <- c()
    for(activity in activities) {
      
      # Getting relevent indexes corresponding to subject and activity
      
      index_val <- (giant_data[,1]==subject & giant_data[,2]==activity)
      act_data <- giant_data[index_val,col_vals]
      
      # Looping through data to calculate mean
      
      mean_act_data <- apply(act_data,2,mean)
      
      # Creating row for final frame 
      # along with subject_id, activity_id, activity_name
      
      mean_act_data <- c(subject,activity,activity_names[activity],matrix(mean_act_data,nrow=1))
      
      # Adding to subject data frame
      
      subj_dat <- rbind(subj_dat,mean_act_data)
    }
    final_dat <- rbind(final_dat,subj_dat)
  }
  
  # Setting column names of data frame
  
  names(final_dat) <- col_names
 
  # We dont use row names
  
  row.names(final_dat) <- NULL
  
  print("Done! Printing to file clean_dat.txt")
  
  write.table(final_dat,'../clean_dat.txt',row.names=FALSE)
  
}