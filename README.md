# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Justin Mullis' fork

_Online Learning Platform_

Course
Title - string, length maximum 50
Description - text

Lesson
Course_ID - foreign key, relationship 1:X
Title - string, length maximum 50
Body - text



_Profile Page_

User
Username - min and max length
Email - passes some basic check for valid email

Profile
User_ID - foreign key, relationship 1:X
City_ID - 1:X
State_ID - 1:X
Country_ID 1:X
Age - int, min and max
Gender_ID - 1:X

City
State_ID - 1:X
Name

State
Country_ID - 1:X
Name

Country
Name

Gender
Type


_Message Board_

Users
Email
Link Karma
Comment Karma

Submission
Title
URL
Upvotes
Timestamps

Comments
Author_ID
Body
Timestamps