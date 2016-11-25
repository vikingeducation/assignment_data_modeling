# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.

Entities:

  Students

  Courses 

  Lessons

Attributes
  Students
    Name - str
    Email -emailstr
    What courses they take (many) - many to many relationship with courses. 
    Completed Lessons (many) -many to many relationship with lessons

  Courses
    Lessons - one to many relationship 
    Students enrolled - many to many relationship with students. 
    Title -string
    Description - string

  Lessons
    Course they belong to - foregin key
    Title - string
    Body - bigtext
    Students Completed - many to many relationship with students

Table Students
  column - first_name -str
  column last_name - str
  column -email - emailstr

Table Courses 
  column - Title -str
  column -description - str 

Table Lessons 
  column - Course ID - foregin key
  column - Title - string
  column - Body  - text

Join Table - Courses Taken
  column - course id
  column - student id 

Join Table - Lessons Completed
  column - lesson id
  column - student id 


You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.