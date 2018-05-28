merge<-function(pathstr) {
        #load required packages
        library(dplyr)
        library(readr)
        library(reshape2)
        
        #Get current directory and then change to directory containing extracted files
        basedir<-getwd()
        setwd(pathstr)
        options(readr.num_columns = 0) #suppresses reader messages
        
        #read general reference Tables
        features<-read.table("features.txt",sep=" ",header=FALSE,col.names=c("featureid","feature"))
        activities<-read.table("activity_labels.txt",sep=" ",header=FALSE,col.names = c("activityid","activity"))

        #read train data
        trnsbj<-read_table("./train/subject_train.txt",col_names=c("subject")) #train subjects
        trnlabels<-read_table("./train/y_train.txt", col_names=c("activityid")) #train labels
        trndata<-read_table2("./train/X_train.txt",col_names=FALSE) #train data
        colnames(trndata)=features$feature

        trndata<-bind_cols(trnlabels,trnsbj,trndata)
        #trndata<-trndata %>% mutate(dataset="TRAIN",activity=activities[trndata$activityid,2]) %>%
        #   select(dataset,subject,activity,3:563)
        
        trndata<-trndata %>% mutate(activity=activities[trndata$activityid,2]) %>%
                select(subject,activity,matches("-mean\\(|-std\\("))

        #read test data
        tstsbj<-read_table("./test/subject_test.txt",col_names=c("subject")) #test subjects
        tstlabels<-read_table("./test/y_test.txt", col_names=c("activityid")) #test labels
        tstdata<-read_table2("./test/X_test.txt",col_names=FALSE) #test data
        
        setwd(basedir)
        
        colnames(tstdata)=features$feature

        tstdata<-bind_cols(tstlabels,tstsbj,tstdata)
        #tstdata<-tstdata %>% mutate(dataset="TEST",activity=activities[tstdata$activityid,2]) %>%
        #   select(dataset,subject,activity,3:563)
        tstdata<-tstdata %>% mutate(activity=activities[tstdata$activityid,2]) %>%
                select(subject,activity,matches("-mean\\(|-std\\("))

        #combine data
        alldata<-union(trndata,tstdata)
        
        #create tidy averaged dataset
        id.vars<-c("subject","activity")
        ndf<-melt(alldata,id.vars,variable.name="features",na.rm=TRUE,value.name="values")
        ag<-dcast(ndf,subject  + activity ~ features,mean)
        ag
        
}