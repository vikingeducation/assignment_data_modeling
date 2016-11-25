1. You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.

Goals:
  - To have public courses available that are structured with a title, description, and lessons.

Entities:
  - courses
  - lessons

Attributes:
  Courses:
    - title
    - description
  Lessons:
    - title
    - body
    - course id

Relationships:
  One-to-many
  Each course will have many lessons but each lesson will only belong to that one course

Data Model:
  Course Table:
    1. "id", Integer
    2. "title", String, 60 characters max
    3. "description", Text, no limit
    4. "created_at", DateTime
    5. "updated_at", DateTime

  Lesson Table:
    1. "id", Integer
    2. "title", String, 60 characters max
    3. "body", Text, no limits
    4. "CourseID", Integer
    5. "created_at", DateTime
    6. "updated_at", DateTime

2. You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.

Goals:
  - Collect more information about our users so we can provide them with a more tailored experience.

Entities:
  - profile
  - city
  - state
  - country

Attributes:
  Profile:
    - user id
    - age
    - gender
  City:
    - name
  Country:
    - name
  State:
    - name
    - country id

Relationships:
  - user/profile: one-to-one, a user should have one profile and it will be linked to one user
  - city, country, state/profile: one-to-many, a city, state, or country will belong to more than one profile but the profile will only have one of each of them
  - country/state: one-to-many, a country will have many states but a state will not belong to more than one country

Data Model:
  Profile Table:
    1. "id", Integer
    2. "age", Integer
    3. "gender", String, no limits
    4. "UserID", Integer
    5. "CityID", Integer
    6. "CountryID", Integer
    7. "StateID", Integer
    8. "created_at", DateTime
    9. "updated_at", DateTime
  City:
    1. "id", Integer
    2. "name", String, 60 characters max
    3. "created_at", DateTime
    4. "updated_at", DateTime
  Country:
    1. "id", Integer
    2. "name", String, 60 characters max
    3. "created_at", DateTime
    4. "updated_at", DateTime
  State:
    1. "id", Integer
    2. "name", String, 60 characters max
    3. "CountryID", Integer
    4. "created_at", DateTime
    5. "updated_at", DateTime
