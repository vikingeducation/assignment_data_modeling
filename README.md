# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*


1. You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.


### What are the Goals?
1) A student should be able to take a course.
2) A user should be able to view course details (title and desc)
3) A user should be able to view a course's lessons and content

### Entities/Attributes/Types/Constraints

Student
-------
id: int, primary_key
first_name: string
last_name: string
email: string, unique index: true


Course
-------
id: int, primary_key
title: string
description: text


StudentCourses
--------------
id: int, primary_key
student_id: int
course_id: int


Lesson
-------
id: int, primary_key
course_id: int
title: string
body: text


### Relationships

Student
has_and_belongs_to_many :courses

Course
has_many :lessons
has_and_belongs_to_many :students

Lesson
belongs_to :course

---------------------------------

2.  You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.

### What are the Goals?
1) A user should be able to have one profile
2) A user should have demographic information associated
3) A profile should know the demographic and user information
4) A user should be able to select State/Country from a prepopulated list

### Entities/Attributes/Types/Constraints

User
-----
id: int, primary_key
username: string
email: string, unique, index


State
-----
id: int, primary_key
name: string


Country
-------
id: int, primary_key
name: string


Profile
-------
id: int, primary_key
city: string
state_id: int
country_id: int
user_id: int
age: int
gender: string


### Relationships

User
has_one :profile

State
has_many :profiles

Country
has_many :profiles

Profile
belongs_to :user
belongs_to :state
belongs_to :country



---------------------------------
3. You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.

### What are the Goals?
1) A user can create a post
2) A user can comment on a post
3) A user can comment on a comment

### Entities/Attributes/Types/Constraints

User
----
id: int, primary_key
email: string, unique, index

Post
----
id: int, primary_key
user_id: int, primary_key
body: text

Comment
-------
id: int, primary_key
commentable_id: int
user_id: int
type: // [comment, post]



### Relationships
User
has_many :posts
has_many :comments


Post
has_many :comments
belongs_to: user


Comment
has_many :comments
belongs_to :post
belongs_to :user

















