Week 4 Assignment
=================

The data was collected from the accelerometer and gyroscope in Samsung
smartphones of 30 subjects aged 19-48. The data consists of statistics
of the tri-axial linear acceleration (g) and angular velocity
(radians/second).

From the README.txt included with the original data set:

> "The sensor signals (accelerometer and gyroscope) were pre-processed
> by applyingnoise filters and then sampled in fixed-width sliding
> windows of 2.56 sec and 50% overlap (128 readings/window). The sensor
> acceleration signal, which has gravitational and body motion
> components, was separated using a Butterworth low-pass filter into
> body acceleration and gravity. The gravitational force is assumed to
> have only low frequency components, therefore a filter with 0.3 Hz
> cutoff frequency was used. From each window, a vector of features was
> obtained by calculating variables from the time and frequency domain."

The accelerometer and gyroscope data was combined with the activity,
subject, and names for each of the measurments and reduced to just the
measurements of mean and standard deviation. Finally, the average of
each measurement was calculated for each subject/activity pairing.

The table below gives the name, units, class, range, and description of
each variable in the final table.

    ## 
    ## -----------------------------------------------------------------------------------
    ## Variable                     Units    Class    Range  Description                  
    ## --------------------------- ------- --------- ------- -----------------------------
    ## activity                      NA    character    6    Description of the activity  
    ##                                                       (WALKING WALKING_UPSTAIRS    
    ##                                                       WALKING_DOWNSTAIRS SITTING   
    ##                                                       STANDING LAYING)             
    ## 
    ## subject                       NA     integer  [1:30]  code representing the test   
    ##                                                       subject                      
    ## 
    ## tBodyAcc-mean()-X              g     double   [-1:1]  Mean of the time domain body 
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the X       
    ##                                                       direction                    
    ## 
    ## tBodyAcc-mean()-Y              g     double   [-1:1]  Mean of the time domain body 
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the Y       
    ##                                                       direction                    
    ## 
    ## tBodyAcc-mean()-Z              g     double   [-1:1]  Mean of the time domain body 
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the Z       
    ##                                                       direction                    
    ## 
    ## tBodyAcc-std()-X               g     double   [-1:1]  Standard deviation of the    
    ##                                                       time domain body acceleration
    ##                                                       of the accelerometer in the X
    ##                                                       direction                    
    ## 
    ## tBodyAcc-std()-Y               g     double   [-1:1]  Standard deviation of the    
    ##                                                       time domain body acceleration
    ##                                                       of the accelerometer in the Y
    ##                                                       direction                    
    ## 
    ## tBodyAcc-std()-Z               g     double   [-1:1]  Standard deviation of the    
    ##                                                       time domain body acceleration
    ##                                                       of the accelerometer in the Z
    ##                                                       direction                    
    ## 
    ## tGravityAcc-mean()-X           g     double   [-1:1]  Mean of the time domain      
    ##                                                       gravity acceleration of the  
    ##                                                       accelerometer in the X       
    ##                                                       direction                    
    ## 
    ## tGravityAcc-mean()-Y           g     double   [-1:1]  Mean of the time domain      
    ##                                                       gravity acceleration of the  
    ##                                                       accelerometer in the Y       
    ##                                                       direction                    
    ## 
    ## tGravityAcc-mean()-Z           g     double   [-1:1]  Mean of the time domain      
    ##                                                       gravity acceleration of the  
    ##                                                       accelerometer in the Z       
    ##                                                       direction                    
    ## 
    ## tGravityAcc-std()-X            g     double   [-1:1]  Standard deviation of the    
    ##                                                       time domain gravity          
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the X       
    ##                                                       direction                    
    ## 
    ## tGravityAcc-std()-Y            g     double   [-1:1]  Standard deviation of the    
    ##                                                       time domain gravity          
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the Y       
    ##                                                       direction                    
    ## 
    ## tGravityAcc-std()-Z            g     double   [-1:1]  Standard deviation of the    
    ##                                                       time domain gravity          
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the Z       
    ##                                                       direction                    
    ## 
    ## tBodyAccJerk-mean()-X          g     double   [-1:1]  Mean of the time domain body 
    ##                                                       linear acceleration of the   
    ##                                                       accelerometer in the X       
    ##                                                       direction                    
    ## 
    ## tBodyAccJerk-mean()-Y          g     double   [-1:1]  Mean of the time domain body 
    ##                                                       linear acceleration of the   
    ##                                                       accelerometer in the Y       
    ##                                                       direction                    
    ## 
    ## tBodyAccJerk-mean()-Z          g     double   [-1:1]  Mean of the time domain body 
    ##                                                       linear acceleration of the   
    ##                                                       accelerometer in the Z       
    ##                                                       direction                    
    ## 
    ## tBodyAccJerk-std()-X           g     double   [-1:1]  Standard deviation of the    
    ##                                                       time domain body linear      
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the X       
    ##                                                       direction                    
    ## 
    ## tBodyAccJerk-std()-Y           g     double   [-1:1]  Standard deviation of the    
    ##                                                       time domain body linear      
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the Y       
    ##                                                       direction                    
    ## 
    ## tBodyAccJerk-std()-Z           g     double   [-1:1]  Standard deviation of the    
    ##                                                       time domain body linear      
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the Z       
    ##                                                       direction                    
    ## 
    ## tBodyGyro-mean()-X          rad/sec  double   [-1:1]  Mean of the time domain      
    ##                                                       velocity of the gyroscope in 
    ##                                                       the X direction              
    ## 
    ## tBodyGyro-mean()-Y          rad/sec  double   [-1:1]  Mean of the time domain      
    ##                                                       velocity of the gyroscope in 
    ##                                                       the Y direction              
    ## 
    ## tBodyGyro-mean()-Z          rad/sec  double   [-1:1]  Mean of the time domain      
    ##                                                       velocity of the gyroscope in 
    ##                                                       the Z direction              
    ## 
    ## tBodyGyro-std()-X           rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       time domain velocity of the  
    ##                                                       gyroscope in the X direction 
    ## 
    ## tBodyGyro-std()-Y           rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       time domain velocity of the  
    ##                                                       gyroscope in the Y direction 
    ## 
    ## tBodyGyro-std()-Z           rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       time domain velocity of the  
    ##                                                       gyroscope in the Z direction 
    ## 
    ## tBodyGyroJerk-mean()-X      rad/sec  double   [-1:1]  Mean of the time domain      
    ##                                                       angular velocity of the      
    ##                                                       gyroscope in the X direction 
    ## 
    ## tBodyGyroJerk-mean()-Y      rad/sec  double   [-1:1]  Mean of the time domain      
    ##                                                       angular velocity of the      
    ##                                                       gyroscope in the Y direction 
    ## 
    ## tBodyGyroJerk-mean()-Z      rad/sec  double   [-1:1]  Mean of the time domain      
    ##                                                       angular velocity of the      
    ##                                                       gyroscope in the Z direction 
    ## 
    ## tBodyGyroJerk-std()-X       rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       time domain angular velocity 
    ##                                                       of the gyroscope in the X    
    ##                                                       direction                    
    ## 
    ## tBodyGyroJerk-std()-Y       rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       time domain angular velocity 
    ##                                                       of the gyroscope in the Y    
    ##                                                       direction                    
    ## 
    ## tBodyGyroJerk-std()-Z       rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       time domain angular velocity 
    ##                                                       of the gyroscope in the Z    
    ##                                                       direction                    
    ## 
    ## tBodyAccMag-mean()             g     double   [-1:1]  Mean of the time domain      
    ##                                                       triaxial body acceleration of
    ##                                                       the accelerometer calculated 
    ##                                                       using the Euclidean norm     
    ## 
    ## tBodyAccMag-std()              g     double   [-1:1]  Standard deviation of the    
    ##                                                       time domain triaxial body    
    ##                                                       acceleration of the          
    ##                                                       accelerometer calculated     
    ##                                                       using the Euclidean norm     
    ## 
    ## tGravityAccMag-mean()          g     double   [-1:1]  Mean of the time domain      
    ##                                                       triaxial gravity acceleration
    ##                                                       of the accelerometer         
    ##                                                       calculated using the         
    ##                                                       Euclidean norm               
    ## 
    ## tGravityAccMag-std()           g     double   [-1:1]  Standard deviation of the    
    ##                                                       time domain triaxial gravity 
    ##                                                       acceleration of the          
    ##                                                       accelerometer calculated     
    ##                                                       using the Euclidean norm     
    ## 
    ## tBodyAccJerkMag-mean()         g     double   [-1:1]  Mean of the time domain      
    ##                                                       triaxial body linear         
    ##                                                       acceleration of the          
    ##                                                       accelerometer calculated     
    ##                                                       using the Euclidean norm     
    ## 
    ## tBodyAccJerkMag-std()          g     double   [-1:1]  Standard deviation of the    
    ##                                                       time domain triaxial body    
    ##                                                       linear acceleration of the   
    ##                                                       accelerometer calculated     
    ##                                                       using the Euclidean norm     
    ## 
    ## tBodyGyroMag-mean()         rad/sec  double   [-1:1]  Mean of the time domain      
    ##                                                       triaxial velocity of the     
    ##                                                       gyroscope calculated using   
    ##                                                       the Euclidean norm           
    ## 
    ## tBodyGyroMag-std()          rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       time domain triaxial velocity
    ##                                                       of the gyroscope calculated  
    ##                                                       using the Euclidean norm     
    ## 
    ## tBodyGyroJerkMag-mean()     rad/sec  double   [-1:1]  Mean of the time domain      
    ##                                                       triaxial angular velocity of 
    ##                                                       the gyroscope calculated     
    ##                                                       using the Euclidean norm     
    ## 
    ## tBodyGyroJerkMag-std()      rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       time domain triaxial angular 
    ##                                                       velocity of the gyroscope    
    ##                                                       calculated using the         
    ##                                                       Euclidean norm               
    ## 
    ## fBodyAcc-mean()-X              g     double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) body acceleration 
    ##                                                       of the accelerometer in the X
    ##                                                       direction                    
    ## 
    ## fBodyAcc-mean()-Y              g     double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) body acceleration 
    ##                                                       of the accelerometer in the Y
    ##                                                       direction                    
    ## 
    ## fBodyAcc-mean()-Z              g     double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) body acceleration 
    ##                                                       of the accelerometer in the Z
    ##                                                       direction                    
    ## 
    ## fBodyAcc-std()-X               g     double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform) body 
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the X       
    ##                                                       direction                    
    ## 
    ## fBodyAcc-std()-Y               g     double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform) body 
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the Y       
    ##                                                       direction                    
    ## 
    ## fBodyAcc-std()-Z               g     double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform) body 
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the Z       
    ##                                                       direction                    
    ## 
    ## fBodyAccJerk-mean()-X          g     double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) body linear       
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the X       
    ##                                                       direction                    
    ## 
    ## fBodyAccJerk-mean()-Y          g     double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) body linear       
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the Y       
    ##                                                       direction                    
    ## 
    ## fBodyAccJerk-mean()-Z          g     double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) body linear       
    ##                                                       acceleration of the          
    ##                                                       accelerometer in the Z       
    ##                                                       direction                    
    ## 
    ## fBodyAccJerk-std()-X           g     double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform) body 
    ##                                                       linear acceleration of the   
    ##                                                       accelerometer in the X       
    ##                                                       direction                    
    ## 
    ## fBodyAccJerk-std()-Y           g     double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform) body 
    ##                                                       linear acceleration of the   
    ##                                                       accelerometer in the Y       
    ##                                                       direction                    
    ## 
    ## fBodyAccJerk-std()-Z           g     double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform) body 
    ##                                                       linear acceleration of the   
    ##                                                       accelerometer in the Z       
    ##                                                       direction                    
    ## 
    ## fBodyGyro-mean()-X          rad/sec  double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) velocity of the   
    ##                                                       gyroscope in the X direction 
    ## 
    ## fBodyGyro-mean()-Y          rad/sec  double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) velocity of the   
    ##                                                       gyroscope in the Y direction 
    ## 
    ## fBodyGyro-mean()-Z          rad/sec  double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) velocity of the   
    ##                                                       gyroscope in the Z direction 
    ## 
    ## fBodyGyro-std()-X           rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform)      
    ##                                                       velocity of the gyroscope in 
    ##                                                       the X direction              
    ## 
    ## fBodyGyro-std()-Y           rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform)      
    ##                                                       velocity of the gyroscope in 
    ##                                                       the Y direction              
    ## 
    ## fBodyGyro-std()-Z           rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform)      
    ##                                                       velocity of the gyroscope in 
    ##                                                       the Z direction              
    ## 
    ## fBodyAccMag-mean()             g     double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) triaxial body     
    ##                                                       acceleration of the          
    ##                                                       accelerometer calculated     
    ##                                                       using the Euclidean norm     
    ## 
    ## fBodyAccMag-std()              g     double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform)      
    ##                                                       triaxial body acceleration of
    ##                                                       the accelerometer calculated 
    ##                                                       using the Euclidean norm     
    ## 
    ## fBodyBodyAccJerkMag-mean()     g     double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) triaxial body     
    ##                                                       linear acceleration of the   
    ##                                                       accelerometer calculated     
    ##                                                       using the Euclidean norm     
    ## 
    ## fBodyBodyAccJerkMag-std()      g     double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform)      
    ##                                                       triaxial body linear         
    ##                                                       acceleration of the          
    ##                                                       accelerometer calculated     
    ##                                                       using the Euclidean norm     
    ## 
    ## fBodyBodyGyroMag-mean()     rad/sec  double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) triaxial velocity 
    ##                                                       of the gyroscope calculated  
    ##                                                       using the Euclidean norm     
    ## 
    ## fBodyBodyGyroMag-std()      rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform)      
    ##                                                       triaxial velocity of the     
    ##                                                       gyroscope calculated using   
    ##                                                       the Euclidean norm           
    ## 
    ## fBodyBodyGyroJerkMag-mean() rad/sec  double   [-1:1]  Mean of the frequency domain 
    ##                                                       (following a Fast Fourier    
    ##                                                       Transform) triaxial angular  
    ##                                                       velocity of the gyroscope    
    ##                                                       calculated using the         
    ##                                                       Euclidean norm               
    ## 
    ## fBodyBodyGyroJerkMag-std()  rad/sec  double   [-1:1]  Standard deviation of the    
    ##                                                       frequency domain (following a
    ##                                                       Fast Fourier Transform)      
    ##                                                       triaxial angular velocity of 
    ##                                                       the gyroscope calculated     
    ##                                                       using the Euclidean norm     
    ## -----------------------------------------------------------------------------------
