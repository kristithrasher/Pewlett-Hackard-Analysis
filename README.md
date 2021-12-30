# Pewlett-Hackard-Analysis

## Overview
Pewlett Hawkard is a large company with several thousand employees who is looking towards future by offering retirement package for those employees who meet specific criteria. Pewlett Hawkard is also looking at how many positions will be available due to retirements. This will only help this large upcoming company be prepared for the future. 
Bobby who is the HR Analyst tasked for employee research was asked along with me to build an employee database using SQL. We will do this by applying data modeling, engineering, and analysis skills. We worked with six csv files to complete this task. 

## Results 

###  The Number of Retiring Employees by Title
-	A query was created a retirement titles table for employees who were eligible for retirement (birthday was between January 1, 1952 and December 31, 1955.
![Screenshot (141)](https://user-images.githubusercontent.com/94208810/147626829-d36b8e92-ef59-4214-b33d-d79894a91da4.png)

-	A query was created a unique titles table that contains the employee number, first and last name and most recent title. 
![Screenshot (142)](https://user-images.githubusercontent.com/94208810/147626861-38b541a3-4510-4c49-a84e-f08e8e784fad.png)

-	A query was created a retiring table that contained number of titles filled by employees who are retiring. 
![Screenshot (143)](https://user-images.githubusercontent.com/94208810/147626908-a5f244e9-fc4a-4417-b992-5ca517a83351.png)


## Mentorship Program Eligibility
-	A query was created to show a mentorship eligibility table for current employees who were born between January 1, 1965 and December 31, 1965. 
  ![Screenshot (147)](https://user-images.githubusercontent.com/94208810/147773554-91448063-a87e-4749-854e-94ba5cf92711.png)


-	This table shows that are  1,549 people are eligible for a mentorship program. 
  - The following query searched the mentorship_eligibility table and counted the total. 
  SELECT COUNT (title)
  FROM mentorship_eligibility
![Screenshot (145)](https://user-images.githubusercontent.com/94208810/147773441-a7449799-bdfb-408b-9185-281545d56ae2.png)
  - The following table created from this query shows total count for all titles in mentorship_eligibility table. 
    SELECT COUNT (title), title
    INTO mentor_titles
    FROM mentorship_eligibility
    GROUP BY title
    ORDER BY COUNT(title)DESC;
    SELECT * FROM mentor_titles
    ![Screenshot (149)](https://user-images.githubusercontent.com/94208810/147775679-fd11d9df-25f8-4def-92f5-0390eb712284.png)

## Summary
"Silver Tsunami" is what Hewlett Packard refers to when they started this project of retirements and upcoming positions that need to be filled. A company who is looking at the future and being prepared they had the analysis completed to discover the number of retiring employees and who was eligible for a mentorship program. With these two tasks completed we have concluded that
  
  1.  90,398 roles will need to be filled as the "silver tsunami" begins to make an impact. 

  2.  There are 1,549 who are eligible for the mentorship retirement program. 
      2  managers, 283 Senior Staff employees, 427 Senior Engineers, 405 Engineers, 297 Staff, 77 Technique Leader       and 60 Assistant Engineer employees in the departments to mentor the next generation of Pewlett Hackard           employees. 
      
      



