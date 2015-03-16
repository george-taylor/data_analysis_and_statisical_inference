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

# q6: Compute the relative frequency distribution of genhlth. 
# What proportion of the sample reports being in excellent health?
table(cdc$genhlth)/20000

# q7: Make a plot that displays the boy-to-girl ratio for every year in the data set. What do you see?
plot(x = cdc$year, y = (cdc$boys / cdc$girls),  type = "o")

# q8: Calculate absolute differences between number of boys and girls born in each year, 
# and determine which year out of the cdc data had the biggest absolute difference 
# in the number of girls and number of boys born? 
cdc$year[which.max(cdc$boys - cdc$girls)]

