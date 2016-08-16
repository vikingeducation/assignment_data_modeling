# assignment_data_modeling
Mmmmm.... dataaaaa....

By BranLiang

*Include your ERM modeling "pseudocode" in the space below*

## Basic 1
### You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.
table 1: <br>
| User_id(PK) | username | password | email |
| User_id(PK) | username | password | email |
table 2: <br>
| Course_id(PK) | title | description |
table 3: <br>
| Lession_id(PK) | Course_id(FK) | title | body |
