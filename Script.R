
# =================================================== #
# Assignment 1
# Author:Sajib Saha
# Email: sajibsaha332255@gmail.com
# Date of submission:
# =================================================== #


# Task 1 ------------------------------------------------------------------
# Read the data from the folder using suitable function into a variable named "df1"
# You will find details of the variables in the excel sheet named "Data Dictionary"


#install.packages(readxl)==================================
# Load the package readxl==================================
library(readxl) 

## Read the "DATA" sheet into df1 ####==================================
df1 <- read_excel("Data/StudentSurveyData.xlsx", sheet = "DATA") 
df1

# Task 2 -----------------------------------------------------------------------
##Check structure of the data ####-----------------------------------------------

str(df1) # there presents two type of data one is numerical and other is character
## find out 1st 6 values#### ---------------------------------------------------

head(df1)
## find out last 6 values####---------------------------------------------------

tail(df1)
## find out the missing value of the data #### ---------------------------------
sum(is.na(df1)) # there id no missing values here

# Task 3 ------------------------------------------------------------------
## See summary of the data frame #### ==========================================
summary(df1)

# Task 4 ------------------------------------------------------------------
## (1) Use the function unique() to see the unique categories in the Major column of the data frame.####
unique(df1$Major)

# (2) Use the function table() to see the frequency of each category in Major column in the data frame.
table(df1$Major)

# Task 5 ------------------------------------------------------------------
# Create a new data frame named df2, where the "IS" category in Major column is replaced by "Information Systems"
##dplyr####------------------------------------------

library(dplyr)
df2 <- df1 %>% 
  mutate(Major= ifelse(Major== "IS", "Information System", Major))

df2
unique(df2$Major)
# Check frequency of categories in Major column again. ======================
table(df2$Major)

# Task 6 ------------------------------------------------------------------
# Run the following code ONLY ONCE (DO NOT CHANGE ANYTHING).
set.seed(2025)
df2$Spending[sample(nrow(df2), nrow(df2) * 0.05)] <- NA  # introduces 5% missing values
df2$`Text Messages`[sample(nrow(df2), nrow(df2) * 0.1)] <- NA  # introduces 10% missing values

# Create a function called 'data_na_count' with one argument (data) that returns 
# a vector with number of missing values in each columns

data_na_count <- function(data) {
  return(colSums(is.na(data)))
}

## Apply the function ####-----------------------------------------------------
na_counts <- data_na_count(df2)
print(na_counts)


# Task 7 ----------------------------------------------------------------------
# Create a new data frame named df_male that contains data for male students only.
## base R ####==================================================================

df_male <- df2[df2$Gender=="Male",] 
df_male

## using dplyr ####=============================================================

df_male1 <- df2 %>% 
  filter(Gender=="Male")
df_male1

## missing value #### ==========================================================
sum(is.na(df_male1$Spending))

# How many missing values are there in the Spending column of the df_male data frame?
# Your answer: 3


# Task 8 ------------------------------------------------------------------
# From the df2 data frame find the top 3 students having highest GPA who are 
# unemployed and are currently in 'Senior' class

head(df2)

##dplyr #### ==================================================================

top_stu <- df2 %>% 
  filter(Employment== "Unemployed", Class=="Senior") %>% 
  arrange(desc(GPA)) %>% 
  head(3)
top_stu

## base R####----------------------------------------------------------------------

top_student <- df2[df2$Employment=="Unemployed" & df2$Class=="Senior",]
filt_stu <- top_student[order(-top_student$GPA), ]
top_most <- head(filt_stu, 3)
top_most

`# Task 9 ------------------------------------------------------------------
# In the df2 data frame, change data type of all the character columns to factor columns
# Do not create a new data frame
# Check the data type of the columns by inspecting the data frame using str() 

df2 <- df2 %>% 
  mutate_if(is.character, as.factor)

## check using str() ####------------------------------------------------------------
str(df2)

# See the summary of the new data frame
summary(df2)

# Task 10 -----------------------------------------------------------------
# Select only those students who use Laptop for study. Export this data into an Excel file.
## base R ####--------------------------------------------------------------------
stu_laptop <- df2[df2$Computer=="Laptop", ]
stu_laptop

## write into excel file ####-------------------------------------------------
## install package  install.packages("writexl") ####=============================

library(writexl)
write_xlsx(stu_laptop, "Output/stu_laptop.xlsx")

## dplyr ####--------------------------------------------------------------------

stu_having_laptop <- df2 %>% 
  filter(df2$Computer =="Laptop" ,)


write_xlsx(stu_having_laptop, "Output/stu_having_laptop.xlsx")

# Thank you ####--------------------------------------------------------------------

