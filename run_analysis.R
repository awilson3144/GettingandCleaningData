##Set work directory to location of unzipped UCI HAR data set

setwd("F:/DSS/Getting_Cleaning_Data/Course_Project")

##To start pull all data into R


x_test<-read.table("UCI HAR Dataset/test/X_test.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
x_train<-read.table("UCI HAR Dataset/train/X_train.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")

features<-read.table("UCI HAR Dataset/features.txt")

activity<-read.table("UCI HAR Dataset/activity_labels.txt")
  
  
##Merge test and training data
x<-merge(x_test,x_train,all=TRUE)
y<-merge(y_test,y_train,all=TRUE)
subject<-merge(subject_test,subject_train, all=TRUE)