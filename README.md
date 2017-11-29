# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Problem 1.

Goals: Students should be able to see available courses, and take multiple courses. Each course has multiple lessons. Lessons have a title and body.

Models:
  Students
  Courses
  Lessons

Tables:
  Students:
    First name: varchar(length)
    Last name: varchar(length)
    Id: big int(unique)

  Courses:
    Name: varchar(length)
    Id: big int(unique)
    description: text

  Lessons:
    Title: varchar(length)
    Body: mediumtext
    Id: big int(unique)
    CourseId: big int

    //join table for many to many relationships
  Join Table(Students and Courses):
    Student ID: big int
    Course ID: big int
    (student id and course id combination should be unique)

    Normalization:
    --------------

    First Normal Form checked.
    Second normal form
    --------------------
    1. Having a composite key - checked
     - made join table for many-to-many relationship between students and courses
    2. Composite key combination should be unique - checked

  Problem 2:
  ==========
  Goals: To categorize users based on demographic information.
  Models:
  -------
  1. User
  2. City
  3. State
  4. Country
  5. Age-group
  6. Gender

  Tables:
  -------
  1. User:
  ---------
  a) User ID
  b) Username
  c) Email
  d) City ID

  Question: Should we have separate tables for city, state or not!
