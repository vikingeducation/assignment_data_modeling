# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Justin Mullis' fork

##Online Learning Platform  

**Course**  
Title - string, length maximum 50  
Description - text  

**Lesson**  
Course_ID - foreign key, relationship 1:X  
Title - string, length maximum 50  
Body - text  



##Profile Page  

**User**  
Username - min and max length  
Email - passes some basic check for valid email  

**Profile**  
User_ID - foreign key, relationship 1:X  
City_ID - 1:X  
State_ID - 1:X  
Country_ID 1:X  
Age - int, min and max  
Gender_ID - 1:X  

**City**  
State_ID - 1:X  
Name  

**State**
Country_ID - 1:X  
Name  

**Country**  
Name  

**Gender**  
Type?


##Message Board  

**User**  
Email - valid email, unique  
Link Karma - int  
Comment Karma - int  

**Submission**  
Title - string, length min max  
URL - string, valid URL  
Upvotes - int  
Timestamps - DateTime  

**Comments**    
Author_ID - foreign_key, users table, 1:X   
Upvotes - int  
Body - text  
Timestamps - DateTime  
Parent_ID - can be blank, otherwise direct parent comment, 1:X  
Submission_ID - can be blank, otherwise parent submission, 1:X  

Only need to know comment's parent, whether thats a submission or another comment  
sort of like a tree  

