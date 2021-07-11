####################################################### 
#### Created by Nilesh Kumar, IIM Raipur, India
#######################################################

#Create the data frame.

emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27"))
)

#Print the data frame created.	
print(emp.data)	

#Get the Structure of the Data Frame
str(emp.data)

#Get the Summary of Data of the Data Frame
summary(emp.data)

#Extract Data from Data Frame: Extract specific columns from the data frame using column names name and salary.
data.frame(emp.data$emp_name,emp.data$salary)

#Extract the first two rows and then all columns
emp.data[1:2,]

#Extract 3rd and 5th row with 2nd and 4th column
emp.data[c(3,5),c(2,4)]

#Expand Data Frame by adding columns: using a new column name dept with values "IT","Operations","IT","HR","Finance" for the respective employees. Show the new column result in the dataframe.

emp.data$dept <- c("IT","Operations","IT","HR","Finance")
print(emp.data)

#Expand Data Frame adding new rows: using a new row and merge it with the existing data frame to create the final data frame.
#create a dummy dataframe to merge
emp.newdata <- 	data.frame(
    emp_id = 6, 
    emp_name = "Nilesh Kumar",
    salary = 500, 
    start_date = as.Date("2013-06-22"),
    dept = "IT"
  )

#bind the new dataframe to new one
emp.finaldata <- rbind(emp.data,emp.newdata)
print(emp.finaldata)




