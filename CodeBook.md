###Background Information

The information in this code book is based on the "README.txt", "features_info.txt", and other files found in the Human Activity Recognition Using Smartphones (HAR) Dataset provided for this project, a full description of that data is available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

###Code book
The relevant information from the HAR dataset, including unit information, is found below:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

###Final Data Set Variables
To create the new tidy data set, first I combined the activities and subjects with the training and test data, and merged the training and test sets together to create one data set. I also used "features.txt" to get the column names. Next, I extracted only the measurements on the mean and standard deviation by using grepl to get the columns whose names contained "mean" or "std". Then I labeled the activities using the "activity_labels.txt" file, and made the variable names in the data set more descriptive and easier to work with by changing abbreviations to full words and removing symbols such as ".". Finally, I created the final tidy data set by getting the mean of each variable for each activity and each subject. The final resulting variables are described below.

activity - The activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) that was performed.
subject - The subject who performed the activity for each row. Its range is from 1 to 30.
timebodyaccelerationmeanxaverage - The average tBodyAcc-mean()-X for the activity and subject.
tbodyaccelerometermeanxmean - The average tBodyAcc-mean()-X for the activity and subject.
tbodyaccelerometermeanymean - The average tBodyAcc-mean()-Y for the activity and subject.
tbodyaccelerometermeanzmean - The average tBodyAcc-mean()-Z for the activity and subject.
tbodyaccelerometerstandarddeviationxmean - The average tBodyAcc-std()-X for the activity and subject.
tbodyaccelerometerstandarddeviationymean - The average tBodyAcc-std()-Y for the activity and subject.
tbodyaccelerometerstandarddeviationzmean - The average tBodyAcc-std()-Z for the activity and subject.
tgravityaccelerometermeanxmean - The average tGravityAcc-mean()-X for the activity and subject.
tgravityaccelerometermeanymean - The average tGravityAcc-mean()-Y for the activity and subject.
tgravityaccelerometermeanzmean - The average tGravityAcc-mean()-Z for the activity and subject.
tgravityaccelerometerstandarddeviationxmean - The average tGravityAcc-std()-X for the activity and subject.
tgravityaccelerometerstandarddeviationymean - The average tGravityAcc-std()-Y for the activity and subject.
tgravityaccelerometerstandarddeviationzmean - The average tGravityAcc-std()-Z for the activity and subject.
tbodyaccelerometerjerkmeanxmean - The average tBodyAccJerk-mean()-X for the activity and subject.
tbodyaccelerometerjerkmeanymean - The average tBodyAccJerk-mean()-Y for the activity and subject.
tbodyaccelerometerjerkmeanzmean - The average tBodyAccJerk-mean()-Z for the activity and subject.
tbodyaccelerometerjerkstandarddeviationxmean - The average tBodyAccJerk-std()-X for the activity and subject.
tbodyaccelerometerjerkstandarddeviationymean - The average tBodyAccJerk-std()-Y for the activity and subject.
tbodyaccelerometerjerkstandarddeviationzmean - The average tBodyAccJerk-std()-Z for the activity and subject.
tbodygyroscopemeanxmean - The average tBodyGyro-mean()-X for the activity and subject.
tbodygyroscopemeanymean - The average tBodyGyro-mean()-Y for the activity and subject.
tbodygyroscopemeanzmean - The average tBodyGyro-mean()-Z for the activity and subject.
tbodygyroscopestandarddeviationxmean - The average tBodyGyro-std()-X for the activity and subject.
tbodygyroscopestandarddeviationymean - The average tBodyGyro-std()-Y for the activity and subject.
tbodygyroscopestandarddeviationzmean - The average tBodyGyro-std()-Z for the activity and subject.
tbodygyroscopejerkmeanxmean - The average tBodyGyroJerk-mean()-X for the activity and subject.
tbodygyroscopejerkmeanymean - The average tBodyGyroJerk-mean()-Y for the activity and subject.
tbodygyroscopejerkmeanzmean - The average tBodyGyroJerk-mean()-Z for the activity and subject.
tbodygyroscopejerkstandarddeviationxmean - The average tBodyGyroJerk-std()-X for the activity and subject.
tbodygyroscopejerkstandarddeviationymean - The average tBodyGyroJerk-std()-Y for the activity and subject.
tbodygyroscopejerkstandarddeviationzmean - The average tBodyGyroJerk-std()-Z for the activity and subject.
tbodyaccelerometermagnitudemeanmean - The average tBodyAccMag-mean() for the activity and subject.
tbodyaccelerometermagnitudestandarddeviationmean - The average tBodyAccMag-std() for the activity and subject.
tgravityaccelerometermagnitudemeanmean - The average tGravityAccMag-mean() for the activity and subject.
tgravityaccelerometermagnitudestandarddeviationmean - The average tGravityAccMag-std() for the activity and subject.
tbodyaccelerometerjerkmagnitudemeanmean - The average tBodyAccJerkMag-mean() for the activity and subject.
tbodyaccelerometerjerkmagnitudestandarddeviationmean - The average tBodyAccJerkMag-std() for the activity and subject.
tbodygyroscopemagnitudemeanmean - The average tBodyGyroMag-mean() for the activity and subject.
tbodygyroscopemagnitudestandarddeviationmean - The average tBodyGyroMag-std() for the activity and subject.
tbodygyroscopejerkmagnitudemeanmean - The average tBodyGyroJerkMag-mean() for the activity and subject.
tbodygyroscopejerkmagnitudestandarddeviationmean - The average tBodyGyroJerkMag-stdfor the activity and subject.
fbodyaccelerometermeanxmean - The average tGravityAccMag-mean() for the activity and subject.
fbodyaccelerometermeanymean - The average tGravityAccMag-mean() for the activity and subject.
fbodyaccelerometermeanzmean - The average tGravityAccMag-mean() for the activity and subject.
fbodyaccelerometerstandarddeviationxmean - The average fBodyAcc-mean()-X for the activity and subject.
fbodyaccelerometerstandarddeviationymean - The average fBodyAcc-mean()-Y for the activity and subject.
fbodyaccelerometerstandarddeviationzmean - The average fBodyAcc-mean()-Z for the activity and subject.
fbodyaccelerometermeanfrequencyxmean - The average fBodyAcc-meanFreq()-X for the activity and subject.
fbodyaccelerometermeanfrequencyymean - The average fBodyAcc-meanFreq()-Y for the activity and subject.
fbodyaccelerometermeanfrequencyzmean - The average fBodyAcc-meanFreq()-Z for the activity and subject.
fbodyaccelerometerjerkmeanxmean - The average fBodyAccJerk-mean()-X for the activity and subject.
fbodyaccelerometerjerkmeanymean - The average fBodyAccJerk-mean()-Y for the activity and subject.
fbodyaccelerometerjerkmeanzmean - The average fBodyAccJerk-mean()-Z for the activity and subject.
fbodyaccelerometerjerkstandarddeviationxmean - The average fBodyAccJerk-std()-X for the activity and subject.
fbodyaccelerometerjerkstandarddeviationymean - The average fBodyAccJerk-std()-Y for the activity and subject.
fbodyaccelerometerjerkstandarddeviationzmean - The average fBodyAccJerk-std()-Z for the activity and subject.
fbodyaccelerometerjerkmeanfrequencyxmean - The average fBodyAccJerk-meanFreq()-X for the activity and subject.
fbodyaccelerometerjerkmeanfrequencyymean - The average fBodyAccJerk-meanFreq()-Y for the activity and subject.
fbodyaccelerometerjerkmeanfrequencyzmean - The average fBodyAccJerk-meanFreq()-Z for the activity and subject.
fbodygyroscopemeanxmean - The average fBodyGyro-mean()-X for the activity and subject.
fbodygyroscopemeanymean - The average fBodyGyro-mean()-Y for the activity and subject.
fbodygyroscopemeanzmean - The average fBodyGyro-mean()-Z for the activity and subject.
fbodygyroscopestandarddeviationxmean - The average fBodyGyro-std()-X for the activity and subject.
fbodygyroscopestandarddeviationymean - The average fBodyGyro-std()-Y for the activity and subject.
fbodygyroscopestandarddeviationzmean - The average fBodyGyro-std()-Z for the activity and subject.
fbodygyroscopemeanfrequencyxmean - The average fBodyGyro-meanFreq()-X for the activity and subject.
fbodygyroscopemeanfrequencyymean - The average fBodyGyro-meanFreq()-Y for the activity and subject.
fbodygyroscopemeanfrequencyzmean - The average fBodyGyro-meanFreq()-Z for the activity and subject.
fbodyaccelerometermagnitudemeanmean - The average fBodyAccMag-mean() for the activity and subject.
fbodyaccelerometermagnitudestandarddeviationmean - The average fBodyAccMag-std()for the activity and subject.
fbodyaccelerometermagnitudemeanfrequencymean - The average fBodyAccMag-meanFreq() for the activity and subject.
fbodybodyaccelerometerjerkmagnitudemeanmean - The average fBodyBodyAccJerkMag-mean() for the activity and subject.
fbodybodyaccelerometerjerkmagnitudestandarddeviationmean - The average fBodyBodyAccJerkMag-std() for the activity and subject.
fbodybodyaccelerometerjerkmagnitudemeanfrequencymean - The average fBodyBodyAccJerkMag-meanFreq() for the activity and subject.
fbodybodygyroscopemagnitudemeanmean - The average fBodyBodyGyroMag-mean() for the activity and subject.
fbodybodygyroscopemagnitudestandarddeviationmean - The average fBodyBodyGyroMag-std() for the activity and subject.
fbodybodygyroscopemagnitudemeanfrequencymean - The average fBodyBodyGyroMag-meanFreq() for the activity and subject.
fbodybodygyroscopejerkmagnitudemeanmean - The average fBodyBodyGyroJerkMag-mean() for the activity and subject.
fbodybodygyroscopejerkmagnitudestandarddeviationmean - The average fBodyBodyGyroJerkMag-std() for the activity and subject.
fbodybodygyroscopejerkmagnitudemeanfrequencymean - The average fBodyBodyGyroJerkMag-meanFreq() for the activity and subject.
angletbodyaccelerometermeangravitymean - The average angle(tBodyAccMean,gravity) for the activity and subject.
angletbodyaccelerometerjerkmeangravitymeanmean - The average angle(tBodyAccJerkMean),gravityMean) for the activity and subject.
angletbodygyroscopemeangravitymeanmean - The average angle(tBodyGyroMean,gravityMean) for the activity and subject.
angletbodygyroscopejerkmeangravitymeanmean - The average angle(tBodyGyroJerkMean,gravityMean) for the activity and subject.
anglexgravitymeanmean - The average angle(X,gravityMean) for the activity and subject.
angleygravitymeanmean - The average angle(Y,gravityMean) for the activity and subject.
anglezgravitymeanmean - The average angle(Z,gravityMean) for the activity and subject.