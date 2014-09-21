setwd("~/Dropbox/coursera/Getting-and-Cleanning-Data/UCI HAR Dataset")
# libraries
library(reshape)
library(plyr)

# load data
xtrain = read.table("./train/X_train.txt")
ytrain = read.table("./train/y_train.txt")
strain = read.table("./train/subject_train.txt")

xtest = read.table("./test/X_test.txt")
ytest = read.table("./test/y_test.txt")
stest = read.table("./test/subject_test.txt")

# headings
features = read.table("./features.txt")
headings = features$V2

colnames(xtrain) = headings
colnames(xtest) = headings

ytest <- rename(ytest, c(V1="activity"))
ytrain <- rename(ytrain, c(V1="activity"))

activity = read.table("./activity_labels.txt")
alabels = tolower(levels(activity$V2))

# add labels into y tables
ytrain$activity = factor(ytrain$activity,labels = alabels)
ytest$activity = factor(ytest$activity,labels = alabels)

# format subject variables
strain <- rename(strain, c(V1="subject"))
stest <- rename(stest, c(V1="subject"))

train = cbind(xtrain, strain, ytrain)
test = cbind(xtest, stest, ytest)
data = rbind(train, test)

# mean and standard deviation
titles = "mean|std|subject|activity"
tidy = data[,grep(titles , names(data), value=TRUE)]
names2 = gsub("\\(|\\)|-|,", "", names(tidy))
names(tidy) <- tolower(names2)
final = ddply(tidy, .(activity, subject), numcolwise(mean))
# write file to output
write.table(final, file="tidy.txt", sep = "\t", append=F, row.name=FALSE)