# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*
Basic 1.
Display all courses with title and description
Display all lesson for each course with title and body text

one  ---  many
course - lessons

course
  id - INT
  title - VARCHAR(255) - required
  instructor - VARCHAR(255)
  description - TEXT

lesson
  id - INT
  course_id - INT - required
  title - VARCHAR(255) - required
  body text - TEXT

Basic 2.

add profile page to the user with demographic info
demographic info will be stored separately

user
profile
state
city
country

state
  id - INT
  name - VARCHAR(2) - required

city
  id - INT
  name - VARCHAR(255) - required

country
  id - INT
  name - VARCHAR(255) - required

user
  id - INT
  username - VARCHAR(255) - required unique
  email - VARCHAR(255) - required unique

profile
  id - INT
  user_id - INT
  city_id - INT
  state_id - INT
  country_id INT
  age - INT
  gender - VARCHAR(6)


Intermediate 1.

Build a message board that allows posts to have comments
and for comments to have comments
where each post has an author and each comment has an author

user
post
comment

user
  id - INT
  username - VARCHAR(255) - required unique
  email - VARCHAR(255) - required unique

post
  id - VARCHAR(255)
  user_id - INT
  body - TEXT

comment
  id - INT
  type_id - INT
  parent_id - INT



type
  id - INT
  name comment-reply or post-reply
