# Lab 1 # coursera data_analysis_and_statisical_inference spring 2015

# fetch some data: The Behavioral Risk Factor Surveillance System (BRFSS) 
# is an annual telephone survey of 350,000 people in the United States. As its name implies, 
# the BRFSS is designed to identify risk factors in the adult population and report emerging 
# health trends. For example, respondents are asked about their diet and weekly physical activity, 
# their HIV/AIDS status, possible tobacco use, and even their level of healthcare coverage. 
# The BRFSS Web site contains a complete description of the survey, including the research questions 
# that motivate the study and many interesting results derived from the data.
#
# We will focus on a random sample of 20,000 people from the BRFSS survey conducted in 2000. 
# While there are over 200 variables in this data set, we will work with a small subset.
#
# We begin by loading the data set of 20,000 observations into the R workspace. 
source("http://www.openintro.org/stat/data/cdc.R")

# q1: How many cases and how many variables are there in this data set?
names(cdc)
dim(cdc)

# q2: What type of variable is genhlth?
head(cdc$genhlth)

# q3: What type of variable is weight?
head(cdc$weight)
tail(cdc$weight)

# q4: What type of variable is smoke100?
head(cdc$smoke100)

# q5: Create a numerical summary for gender. How many males are in the sample?  
length(cdc$gender[cdc$gender == "m"])
table(cdc$gender[cdc$gender == "m"])
summary(cdc$gender)

# q6: Compute the relative frequency distribution of genhlth. 
# What proportion of the sample reports being in excellent health?
table(cdc$genhlth)/20000

# q7: What does the mosaic plot reveal about smoking habits and gender?
gender_smokers = table(cdc$gender,cdc$smoke100)
mosaicplot(gender_smokers)

# q8: How many observations are in the subset under23 and smoke that you created in the 
# previous exercise, i.e. how many people in the sample are under the age of 23 and have 
# smoked at least 100 cigarettes in their lifetime?
smokers_under_23 = subset(cdc, cdc$smoke100 == "1" & cdc$age < 23)
dim(smokers_under_23)

# q9: Which of the following is false based on the box plot of BMI vs. general health?   
bmi = (cdc$weight / cdc$height^2) * 703
boxplot(bmi ~ cdc$genhlth)

# q10: Based on the plot you made in the previous exercise, which of the following is 
# true about the relationship between weight and desired weight?   
plot(x = cdc$weight, y = cdc$wtdesire )

