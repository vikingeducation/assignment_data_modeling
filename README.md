# assignment_data_modeling
Mmmmm.... dataaaaa....

Hannah Squier & Chris Goodson

## 1) Free Online Learning Platform
  Goal: Arrange Dataset so info is easily accessible

  Entities and Attributes:
    1) Student: First name, last name, student id (primary key),
    2) Course: course id (primary key), title, description,
    3) Student/Course join table: student id (foreign key), course id (foreign key)
    4) Lessons: course id (foreign key), lesson id (primary key), description

  Relationships:
    1) Student/Course: many-to-many
    2) Course/Lesson: 1-to-many. Lesson belongs to course

## 2) Profile Page
  Goal: Collect demographic information for user already stored in DB

  Entities and Attributes:
    1) User: username

  Relationships:
    1) User/Profile: 1-to-1. Profile belongs to user