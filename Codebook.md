Codebook
========

## Data Source

Taken from the README.txt file for the original data set at [UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones):

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Variables

The output dataset contains 66 variables related to the mean ("mean" in the variable name) and standard deviation ("std" in the variable name) for data collected from the smartphones, as described below.  The remaining two variables are labels for the subject and activity.

### subject
A number representing the subject being recorded performing the activity (1-30)

### activity
The activity the subject was performing when the values were recorded, one of:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

### Acceleration and gyro variables

All of the variables in this section are the average recorded for the given subject while performing the activity specified, as required by the assignment.

These variables represent the mean and standard deviation recorded for the triaxial acceleration from the accelerometer.

- body-acceleration-mean-x-time                  
- body-acceleration-mean-y-time                  
- body-acceleration-mean-z-time                  
- body-acceleration-std-x-time                   
- body-acceleration-std-y-time                   
- body-acceleration-std-z-time                   
- gravity-acceleration-mean-x-time               
- gravity-acceleration-mean-y-time               
- gravity-acceleration-mean-z-time               
- gravity-acceleration-std-x-time                
- gravity-acceleration-std-y-time                
- gravity-acceleration-std-z-time                
- body-acceleration-jerk-mean-x-time             
- body-acceleration-jerk-mean-y-time             
- body-acceleration-jerk-mean-z-time             
- body-acceleration-jerk-std-x-time              
- body-acceleration-jerk-std-y-time              
- body-acceleration-jerk-std-z-time  

These variables represent the mean and standard deviation recorded for the triaxial Angular velocity from the gyroscope.
            
- body-gyro-mean-x-time                          
- body-gyro-mean-y-time                          
- body-gyro-mean-z-time                          
- body-gyro-std-x-time                           
- body-gyro-std-y-time                           
- body-gyro-std-z-time                           
- body-gyro-jerk-mean-x-time                     
- body-gyro-jerk-mean-y-time                     
- body-gyro-jerk-mean-z-time                     
- body-gyro-jerk-std-x-time                      
- body-gyro-jerk-std-y-time                      
- body-gyro-jerk-std-z-time


These variables represent the mean and standard deviation recorded for the estimated body acceleration while performing the activity.
 
- body-acceleration-magnitude-mean-time          
- body-acceleration-magnitude-std-time           
- gravity-acceleration-magnitude-mean-time       
- gravity-acceleration-magnitude-std-time        
- body-acceleration-jerk-magnitude-mean-time     
- body-acceleration-jerk-magnitude-std-time      
- body-gyro-magnitude-mean-time                  
- body-gyro-magnitude-std-time                   
- body-gyro-jerk-magnitude-mean-time             
- body-gyro-jerk-magnitude-std-time              
- body-acceleration-mean-x-frequency             
- body-acceleration-mean-y-frequency             
- body-acceleration-mean-z-frequency             
- body-acceleration-std-x-frequency              
- body-acceleration-std-y-frequency              
- body-acceleration-std-z-frequency              
- body-acceleration-jerk-mean-x-frequency        
- body-acceleration-jerk-mean-y-frequency        
- body-acceleration-jerk-mean-z-frequency        
- body-acceleration-jerk-std-x-frequency         
- body-acceleration-jerk-std-y-frequency         
- body-acceleration-jerk-std-z-frequency         
- body-gyro-mean-x-frequency                     
- body-gyro-mean-y-frequency                     
- body-gyro-mean-z-frequency                     
- body-gyro-std-x-frequency                      
- body-gyro-std-y-frequency                      
- body-gyro-std-z-frequency                      
- body-acceleration-magnitude-mean-frequency     
- body-acceleration-magnitude-std-frequency      
- body-acceleration-jerk-magnitude-mean-frequency
- body-acceleration-jerk-magnitude-std-frequency 
- body-gyro-magnitude-mean-frequency             
- body-gyro-magnitude-std-frequency              
- body-gyro-jerk-magnitude-mean-frequency        
- body-gyro-jerk-magnitude-std-frequency  

