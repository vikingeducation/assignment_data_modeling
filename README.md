Jess

CJ

# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*


1. Online learning platform
  - Goals
      - allows users to choose courses
        - view title, description and lessons
      - allows users to view lessons
        - users can view title and body

  - Entities
    - Course
    - Lesson
    - CourseLessons (join table)

  - Attributes, types, constraints
   - Course
      - Title : string, unique?
      - description : text

    - Lesson
      - title: string
      - body: text

    - CourseLessons
      - course id
      - lesson id

  - Relationship
   - many-to-many
   - courselessons belongs to course
   - course lessons belongs to lesson

2. Profile Page 
  - goals
    - obtain data about users

  - Entities
    - user (username, email, dob, city, state, country, gender)
    - city (city)
    - state (state, inc n/a)
    - country (country)
    - gender (gender)

  - Relationship
    - one-to-many for user to address attributes.

