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
  A user can only have one profile. The profile includes location data which could be redundant, so we made a join table to allow many-to-many relationships between profile and location (such as one person having more than one shipping address, or many people living in the same place)

  User (1:1 with profile)
    id (PK)
    name
    email

  Profile (1:1 with user, x:x with location through ProfileLocation)
    id (PK)
    age
    gender
    user id (FK)
    ProfileLocation id (FK)

  ProfileLocation
    id (PK)
    profile id (FK)
    location id (FK)

  Location (x:x with profile through ProfileLocation)
    id (PK)
    country
    state
    city
    ProfileLocation (FK)

Intermediate

1. Figure out the relationship between comments on submissions, and comments on comments. 
