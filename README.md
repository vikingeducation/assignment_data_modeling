# assignment_data_modeling
Dave Hail
Deven Bhatt

*Include your ERM modeling "pseudocode" in the space below*

BASIC

1. Online Learning

COURSES
  courseID: INT
  title: VARCHAR(100), required
  description: TEXT

LESSONS
  lessonID: INT
  title: VARCHAR(100), required
  body: TEXT
  courseID: INT

