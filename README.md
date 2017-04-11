# assignment_data_modeling
Dave Hail
Deven Bhatt

*Include your ERM modeling "pseudocode" in the space below*

BASIC

1. Online Learning
  One-to-many relationship  

  COURSES
    courseID: INT
    title: VARCHAR(100), required
    description: TEXT

  LESSONS
    lessonID: INT
    title: VARCHAR(100), required
    body: TEXT
    courseID: INT

2. Profile Page for a new User
  One-to-One relationship

  USER
    userID : INT
    email : VARCHAR (60), required
    username : VARCHAR (20), required
    password: VARCHAR (20), required

  PROFILE
    profileID : INT
    city : VARCHAR (20)
    state : VARCHAR (20)
    zip : INT
    country : VARCHAR (20)
    age : SMALLINT
    gender : VARCHAR (3)
    userID : INT

INTERMEDIATE

1. Hacker News Message Board
 One-to-many relationship

  USER
    userID : INT
    email : VARCHAR (60), required
    username : VARCHAR (20), required
    password: VARCHAR (20), required
    about : TEXT

  LINK
    linkID : INT
    title : VARCHAR (100), required
    url : VARCHAR (100), required
    userID : INT

  COMMENT
    commentID : INT
    comment : TEXT
    userID:
