##Instructions for creating tidy data set

###Prerequisites for cleaning data
The run_analysis.R script should be run in the same location
as the unzipped data provide for this assignment.  So before 
running the code be sure that there is a directory called 
'UCI HAR Dataset' that contains all the data provided for the
assignment.

###run_analysis.R process
Running the run_analysis.R script will execute the following steps
*Read in x,y, and subject datasets located in both test and training sets (6 files total)
*Read in features.txt and activity_labels.txt sets from main UCI HAR Dataset directory
*Merge the test and training data sets for x, y, and subject
*Fix labels to create readable and useable R column labels
	*The decisions made here were based on R programming course lectures suggesting that
	column labels should contain all lowercase alplhanumeric characters.
*Assign the new fixed labels to the merged x data set.
*Filter merged x data set for only values pertaining to mean and standard deviation.
	*A literal interpretation of assignment instructions was used to select all fields containing
	"mean" or "std".  While meanfreq() takes the mean of processed data and not raw measurements,
	they were still interpreted as mean calculations and therefore included in the dataset.  For
	the purposes of this assignment it was more reasonable to be over inclusive of fields than
	risk not including pertinent data columns.
*Append y (activity ids), and subject data records as columns in the merged x data
*Add useful activity labels as a column by merging the x data and the activity data
by the y field.  The y field in the x data corresponds to the first column in the 
activity table.
*Remove any unuseable columns
*Make any fixes needed for clear labels
	*Most labels seem intuitive enough, but there were several that incorrectly contained 'bodybody'
	in the label where it should just be 'body' to avoid confusion. These are removed.
*Write data to table.  This table will be written to same directory and called "tidy.txt"
