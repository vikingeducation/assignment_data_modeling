# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

# Basic
1. You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.

2. You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.

## Basic 1:
Goals
  - Which lessons are a part of which courses
  - Attributes for each courses
  - Attributes for each lessons
  - Which courses belong to which lessons
Entities
  - Courses
  - lessons
Attributes
  - Course: Title, description
  - Lesson: Title, body-text, course_id
Types
  - Course
    - Title: string (50 characters max, required)
    - description: text
  - lessons
    - Title: string (50 characters max, required)
    - body-text: text (required)
    - Course_id: foreign_key/integer (required)
Relationships
  - Course
    - Have many lessons
  - Lesson
    - Belong to 1 course

## Basic 2:
Goals
  - User has one profiles
  - Retain demographic info about User
Entities
  - User
  - Location
  - City
  - State
  - Country
Attributes
  User: Age, gender, email, username
  Location: user_id, country_id, city_id, state_id
  City: name
  State: name
  Country: name
types
  - User:
    - Age: integer(no negatives, required, nothing below 13 or greater than 110)
    - Gender: string(required)
    - Email: string(required, must be in emaill format, must be unique)
    - username: string(only characters and nums, required lenght of 8)
  - Location
    - user_id: foriegn_key(required)
    - country_id: foriegn_key(required)
    - city_id: foriegn_key(required)
    - state_id: foriegn_key(required)
  - City:
    - name:string(must be real city)
  - State:
    - name:string(must be real state)
  - Country:
    - name:string(must be real country)

Relationships
  - User
    - has one Location
  - Location
    - has one city
    - has one state
    - has one country

# Intermediate
1. You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.

Goals
  - Keep track of a users posts
  - We want to know what comments belong to what posts
  - Which comments belong to which users
  - We want to know if if a comment is on a post on on another comment, which belongs to a post
