# Cook book

For each record in the tidy.txt is provided:

* <b>Activity</b>: Activity label, e.g.: laying, sitting, standing, etc.

* <b>Subject</b>: id of subject.

The source of the feature variables is provided by features_info.txt file:

* '-XYZ' is used to denote 3-axial signals in the X, Y and Z axis.

* Accelerometer and gyroscope 3-axial raw signals are tAcc-XYZ and tGyro-XYZ. These signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (<b>tBodyAcc-XYZ</b> and <b>tGravityAcc-XYZ</b>) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

* The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (<b>tBodyAccJerk-XYZ</b> and <b>tBodyGyroJerk-XYZ</b>). The magnitude of these three-dimensional signals were calculated using the Euclidean norm (<b>tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag</b>).

* Finally, a Fast Fourier Transform (FFT) was applied to some of these signals producing <b>fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag</b>.

* The tidy.txt data files calculate mean and standard deviation for every field described.
