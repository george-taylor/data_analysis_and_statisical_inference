# Lab 0 # coursera data_analysis_and_statisical_inference spring 2015

# fetch some data: the number of boys and girls born in the US each year. 
source("http://www.openintro.org/stat/data/present.R")

# q1: How many variables are included in this data set?
dim(present)
names(present)

# q2: What command would you use to extract just the counts of girls born? 
present$girls

# q3: Is there an apparent trend in the number of girls born over the years? How would you describe it? 
plot(x = present$year, y = present$girls,  type = "o")

# q4: In what year did we see the most total number of births in the U.S.?
present$year[which.max(present$boys + present$girls)]

# q5: Now, make a plot of the proportion of boys over time, and based on the plot determine 
# if the following statement is true or false: The proportion of boys born in the US has decreased over time. 
plot(x = present$year, y = (present$boys / (present$boys + present$girls)),  type = "o")

# q6: Which statesment is true?
#
# A) Every year there are more girls born than boys.
# B) Every year there are more boys born than girls.
# C) Half of the years there are more boys born, and the other half more girls born.
present$boys > present$girls

# q7: Make a plot that displays the boy-to-girl ratio for every year in the data set. What do you see?
plot(x = present$year, y = (present$boys / present$girls),  type = "o")

# q8: Calculate absolute differences between number of boys and girls born in each year, 
# and determine which year out of the present data had the biggest absolute difference 
# in the number of girls and number of boys born? 
present$year[which.max(present$boys - present$girls)]

