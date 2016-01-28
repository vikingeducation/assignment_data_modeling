# assignment_data_modeling
Mmmmm.... dataaaaa....
Josh Masland
Thomas LO

*Include your ERM modeling "pseudocode" in the space below*

Basic

1. 
  Goals: The goal is to keep track of all the courses and their associated lessons.
  Entities: Courses
    Attributes: Title and Description
  Entities: Lesson
    Attributes: Title and Body Text
  Type: Title of each will be a Text
  Type: Description and body text will be Text

  Constraints: No two courses can have the same name. No two lessons within a course can have a same name. Title's for both entities a maximum amount and cannot be empty. Description and Body Text cannot be empty.

  Relationships: One to many relationship. One Course to many Lessons.

  Design: One table for each Entity(two in total). The lessons table will have the Courses Primary ID as a foreign key in a column. 

  Course
    Primary ID
    Title
    Description

  Lessons
    Primary ID
    Title
    Body Text
    Course ID(FK)

2. 