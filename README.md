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

## Intermediate 1
### You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.
Table 1  
User_id(PK): integer  
username: string  
email: string  
password: string  

Table 2  
Post_id(PK): integer  
User_id(FK): integer  
title: string  
body: string  

Table 3  
Comment_id(PK): integer  
User_id(FK): integer  
Post_id(FK): integer  
body: string  

Table 4  
Comment_id(PK): integer  
Comment_id(FK): integer  

## Advanced 1
### You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?
Table 1  
User_id(PK): integer  
username: string  
email: string  
password: string  

Table 2  
Product_id(PK): integer  
product_name: string  
price: integer  
description: string  
manufacture: string  
produce_date: date  

Table 3  
Order_id(PK): integer  
Product_id(FK): integer  

Table 4  
Order_id(PK): integer  
User_id(FK): integer  
Shipments_id: integer  

Table 5  
Shipments_id(PK): integer  
User_id(FK): integer  
City: string  
State:  string  
Address: string   
