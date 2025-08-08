
# Organize Project folder
# raw_data
# clean_data
# scripts
# tasks
# plots

# create folder
dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("tasks")
dir.create("plots")

# Download "patient_info.csv" dataset from GitHub Repository
# load the dataset into your R environment

data<-read.csv(file.choose())
>view(data)

#convert gender to factor
data$gender_fac <- as.factor(data$gender)
str(data)

#convert factor to numeric using ifelse statement (Female = 1 and Male = 0)
data$gender_num <- ifelse(data$gender_fac == "Female", 1, 0)
class(data$gender_num)

#convert gender numeric code to factor
data$gender_num <- as.factor(data$gender_num)
class(data$gender_num)


#convert smoker to factor
data$smoker_fac <- as.factor(data$smoker)
str(data)

#convert factor to numeric using ifelse statement (Yes = 1 and Male = 0)
data$smoker_num <- ifelse(data$smoker_fac == "Yes", 1, 0)
class(data$smoker_num)

#convert numeric gender code to factor
data$smoker_num <- as.factor(data$smoker_num)
str(data)


#convert diagnosis to factor
data$diagnosis_fac <- as.factor(data$diagnosis)
str(data)

data$diagnosis_fac <- factor(data$diagnosis_fac, levels = c("Normal", "Cancer"))

levels(data$diagnosis_fac)
str(data)



#save file as csv format
write.csv(disease_status, file = "results/patient_data.csv")

