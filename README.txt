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
  Join Table(Students dand Courses):
    Student ID: big int
    Course ID: big int


