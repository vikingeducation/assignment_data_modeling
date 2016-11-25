# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Completed by James and Luke



## Basic 1

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



## Basic 2

**Entities**
  Students
  Profiles

**Student Attributes**
  Username -- Chars -- Length Limit
  Email Address -- Chars -- Length Limit

**Profile Attributes**
  City -- Chars -- Length Limit
  State -- Chars -- 2 Length Text Field
  Country -- Chars -- Length Limit
  Age -- Integer -- Between 0 to 120
  Gender -- Chars -- Length Limit

** Relationships**
  One student has one profile


## Intermediate

** Goal**
  Represent the relationship between users, posts and comments

** Entities**
  Users
  Posts
  Comments

**User Attributes**
  UserID -- Integer (primary key)
  Username -- Text
  Email Address -- Text
  Hashed Password -- Text

**Post Attributes**
  PostID
  Title -- Text -- Length Limit
  Link -- Text
  Creation Timestamp -- Timestamp
  Points -- Integer -- Above 0
  UserID (foreign key)

**Comment Attributes**
  CommentID
  Content -- Text -- Length Limit
  Creation Timestamp -- Timestamp
  Edit Timestamp -- Timestamp
  Edited -- Boolean
  Score -- Integer -- Above 0
  UserID (foreign key)
  ParentID (foreign key)
  Parent Type (foreign key)

**Relationships**
  One user has many posts
  One user has many comments
  One post has many comments
  One comment has many comments

