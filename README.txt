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
  2. Profiles

  Tables:
  -------
  1. User
  2. Profile
  ---------
  User
    1. id (big int, unique)
    2. Username (varchar(15))
    3. Password (varchar(15))

  Profile
    0. ProfileId (big int, unique)
    1. Email (varchar)
    2. City (varchar(10))
    3. State (char(2))
    3. Country (varchar)
    4. Age (small int)
    5. Gender (char(1))
    6. UserId (foreign key, unique, big int)

  Relationships: one to one between user and profile

  First Normal Form-
    Store 1 data piece per row/column

  Second Normal Form-
    Do we have composite key?
    No redundant data

  Third Normal Form-
    Data only dependent on primary key



