## README.md

This project uses data collected from the accelerometers from the Samsung Galaxy S smartphone <a href=https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a>.

The script works as follows:
<ol>
<li>Set the working directory using <b>setwd</b> command.</li>
<li>Load the librarys that I used: <b>reshape</b> and <b>ply</b></li>
<li>Read the train and test data using <b>read.table</b> command for each file:

<li>* Train set: x_train.txt, y_train.txt, subject_train.txt</li>

<li>* Test set: x_test.txt, y_test.txt, subject_test.txt</li>
</li>

<li>Read the headings ("features") from features.txt</li>
<li>Put this headings in the correspondent columns</li>
<li>Read activity table an replace the values in "y" tables</li>
<li>Bind column for tables and join in "data" table</li>
<li>Select only the columns with words "mean" or "std" in their titles.</li>
<li>Clean columns name for (), commas and others</li>
<li>Get the final "tidy" set of data</li>
<li>Export the tidy data to text format.</li>
</ol>

