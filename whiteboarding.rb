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

Intermediate:
  You want to build a message board like Hacker News. Users can post links.
  Other users can comment on these submissions or comment on the comments.
  How would you make sure a comment knows where in the hierarchy it lives?
  Design the data model for this web app.

Goals:
  - Allow users to submit links which we will keep track of along with allowing users to comment on the links and other comments.

Entities:
  - users
  - links
  - comments

Attributes:
  users:
    - username

  links:
    - url
    - title
    - user id

  comments:
    - comment
    - comment id
    - user id
    - link id

  Relationships:
    users/links - one-to-many, a user can submit multiple links but a link only has one submitter
    users/comments - one-to-many, a user can  submit multiple comments but each comment only has one author
    links/comments - one-to-many, a link can have multiple comments but each comment will belong to one link
    comments/comments - one-to-many, a comment can have multiple sub-comments but each comment/sub-comment will belong to, at most, one comment

  Data Model:
    User Table:
      1. "username", String, 25 character max
      2. "id", Integer
      3. "created_at", DateTime
      4. "updated_at", DateTime

    Link Table:
      1. "id", Integer
      2. "url", String, no limit
      3. "title", String, 140 character limit
      4. "UserID", Integer
      5. "created_at", DateTime
      6. "updated_at", DateTime

    Comment Table:
      1. "id", Integer
      2. "comment", Text, no limit
      3. "UserID", Integer
      4. "LinkID", Integer
      5. "CommentID", Integer # Default value = null
      6. "created_at", DateTime
      7. "updated_at", DateTime

    You want to build an e-commerce site like a very simplified Amazon.com.
    You will need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together.
    Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped?
    Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?

    Goals:
      - Keep track of products, users, orders, & shipments.

    Entities:
      - users
      - products
      - orders
      - shipments
      - address
      - state
      - country

    Relationships:
    Data Model:
