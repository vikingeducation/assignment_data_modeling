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
Entities
  - users
  - posts
  - comments
Attributes
  - User:
    -User_name (string, unique)
    -Email (string, unique)
  -Posts
    -User_id (foreign key, integer)
    -Title (string)
    -Body  (text)
  -Comments
    -Parent_id (foreign key, integer)
    -Parent type(comment or post)
    -user_id (foreign key, integer)
    -Body (text)
Relationships
  A user has many posts and has many comments.
  A post belongs to one user.
  A comment belongs to one user.
  A post has many comments.
  A comment belongs to one "parent".
  A comment has many comments.

# Advanced
You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?

Goals
  -Keep track of products, users, orders and shipments.
  -Product: what is the price? Inventory? what is it?
  -User: Who are they? Where do they live? Payment information
  -Orders: Items and quantities, when was order placed?
  -Shipments: Where is it going? When is it arriving? Has it arrived?
Entities
  -Product
  -User
  -Order
  -Shipment
Attributes
  Product
    -Price
    -Inventory
    -Name
    -Product_id
    -Description
  User
    -First_name
    -Last Name
    -Password
    -Address
    -Payment information
  Order
    -User_id
    -Shipment_id
    -Product_id
    -Item quanitity
    -Date ordered
  Shipment
    -Scheduled arrival date
    -Scheduled departure date
    -Arrived? (boolean)
Relationships
  A user has many orders.
  An order has one product.
  A product has many orders
  A shipment has many orders.
  An order belongs to a user.
  An order has one shipment.

(Optional) You want to collect analytics data for visitors and logged-in-users who are visiting your website. This includes basic information like page views and more advanced things like link clicks and time on page. You ideally want to tie this information back to a given user if possible. Design the data model for this analytics infrastructure. You'll have to use your judgement about what additional attributes would be interesting to track

Goals
What pages has a user visited?
What links has a user clicked on?
How long did they spend on each page?
Is a user logged in?
Display all this infor centrally

Entities
  - user
  - page
  - link
  - time
Attributes
  - User
    - user_name: string
    - Password: string
  - page
    - content: string
  - link
    - url: string
    - page_id: foreighn key
  - clicks
    - link_id: foreign_key
    - user_id: foreign_key
  - time
    - page_id: foriegn_key
    - time_spent: time
    - user_id: foreign_key
  Relationships
    - page has many users
    - page has many links
    - link has many pages
    - link has many clicks
    - a user has many clicks
    - user has many page visits
    - a page has many visits
    - a page has many times
    - a user has many times
