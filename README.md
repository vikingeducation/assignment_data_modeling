# assignment_data_modeling
Mmmmm.... dataaaaa....

By BranLiang

*Include your ERM modeling "pseudocode" in the space below*

## Basic 1
### You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.
Table 1  
User_id: integer  
username: string  
password: string  
email: string     

Table 2  
Course_id(PK): integer  
title: string  
description: string  

Table 3  
Lesson_id(PK): integer  
Course_id(FK): string  
title: string  
body: string  

## Basic 2
### You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.
Table 1  
User_id(PK): integer  
username:  string  
email: string  
password: string  

Table 2  
Profile_id(PK): integer  
User_id(FK): integer  
City: string  
State: string  
Country: string   
age:  integer  
gender: string  
