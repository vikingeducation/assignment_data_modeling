# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Completed by James and Luke

## Basic

**Goal** -- We want to store basic student data and keep track of their progress in their courses

**Entities**
  Students
  Course
  Lesson
  StudentCourses
  StudentsLessons

**Student Attributes**
  Username -- Chars -- Length Limit
  Email Address -- Chars -- Length Limit

**Course Attributes**
  Title -- Chars -- Length Limit
  Description -- Chars -- Length Limit

**Lesson Attributes**
  Title -- Chars -- Length Limit
  Body Text -- Chars -- Length Limit
  Course Id(Foreign Key) -- Integer 

**StudentCourses**
  StudentID(Foreign Key)
  LessonID(Foreign Key)
  Completed -- Boolean
  Grade -- Decimal -- Between 0 and 100

**StudentLessons**
  StudentID(Foreign Key)
  CourseID(Foreign Key)
  Completed -- Boolean
  Grade -- Decimal -- Between 0 and 100 

**Relationships**
  One course has many lessons
  Many students have many courses
  Many students have many lessons
