# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Tingting 

models, columns, validations, associations
BASIC
#1 free online learning platform
goals 
  display list of courses and lessons for each course
  display lesson for each course
entities
  courses, lessons
attributes
  courses
    title, string, 1-50 characters, unique, required
    description, string, 200 characters, unique, required
  lessons
    title, string, 1-50 characters, req
    body, string, required
types/constraints
  see above
relationships
  courses:lessons is one:many relationship. students not being logged so unaccounted for in our data model.
tables
  course
    id, integer, primary key
    title, string, 1-50characters, unique, required
    description, text
    'created_at'
    'updated_at'
  lesson
    id, integer, primary key
    course id, integer
    title
    body
    created at
    updated at
normalization
  passes all normal forms

#2 user profile
goals
  display user information (city, state, country, age, gender, username, email) in profile
entities
  user
  user profile
attributes
  user
    username, string, unique, required
    email, string, unique, required
  profile
    city, string
    state, string
    country, string
    age, integer
    gender, string
types/constraints
  see above
relationships
  user:profile is 1:1 relationship
  profile allocated foreign key that maps to relevant user
tables
  user
    id
    username
    email
  profile
    id
    user-id (foreign key mapping to user)
    city
    state
    country
    age
    gender
normalization
  not entirely normalized because location data is in strings, which allows for variability (NYC vs new york), redundancy, inaccuracy. ideally each piece of location data becomes its own data table.

INTERMEDIATE
#1 hacker news
goals
  display list of link posts
  display comments for each post
entities
  user
  post
  comment
attributes
  user
    username, string
  post
    post, string
  comment
    comment, string
types/constraints
  user id/post id/comment id must be unique integers (keys)
relationships
  user:post is one:many
  post:comments is one:many
  comment:comments is one:many
tables
  user
    user id, integer
    username, string
  post
    user id, integer
    post id, integer
    post, string
  comment
    user id, integer
    post id, integer
    comment id, integer
    comment parent id, integer
    comment, string


ADVANCED
goals
entities
attributes
types/constraints
relationships
tables
normalization

goals
entities
attributes
types/constraints
relationships
tables
normalization