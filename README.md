# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Gregory Alford

# Basic

===========================================================================
===========================================================================
===========================================================================


### You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.

## 1. SYSTEM GOALS:

  Display the list of courses with course description. Display a list of lessons within a course. Display lesson content with title

## 2. ENTITIES:

  Courses and descriptions, lessons with title and  content

## 3. ATTRIBUTES AND TYPES:

  Courses:

    1. "Title". string, unique, required

    2. "Description". string, 300 characters, required

  Lessons:

    1. "Title". string, unique, required

    2. "Lesson text". text, unique, required

## 4. RELATIONSHIPS:

  This is a one to many relationship. We offer many different courses, but each course is unique in they way that there is many lessons that belong to only that course

## 5. TABLES:

  Course table:

    1. "id". integer

    2. "title", string, unique, required

    3. "description". text, unique, required

    4. "created_at", DateTime

    5. "updated_at", DateTime


  Lesson Table:

    1. "id". integer
    2. "title". string, unique, required

    3. "Lesson text". text, unique, required

    4. "course_id". integer

    5. "created_at", DateTime

    6. "updated_at", DateTime

## 6. NORMALIZATION:

  1NF: each data peice contains only atomic values

  2NF: There is no repeating data

  3NF: There are no nested dependencies

===========================================================================
===========================================================================
===========================================================================

### You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.

## 1. SYSTEM GOALS:

  Display username and email, then display demographic info in info page

## 2. ENTITIES:

  Users with email, users with demographic info, country, state, city

## 3. ATTRIBUTES AND TYPES:

  Users:

    1. "Username". 4-32 characters, string, unique, required

    2. "email". string, unique required

  Country:

    1. "Country", Primary key

  State:

    1. "State", Primary key

  City:

    1. "City", Primary key

  Personal info

    1. "Age", integer, required

    2. "Gender", only M or F, required

## 4. RELATIONSHIPS:

  This is a one to many relationship because we can have one state or city that belongs to many many users.

## 5. TABLES:

  Username:

    1. "id". integer

    2. "username". 4-32 characters, string, unique, required

    3. "email". string, unique required

    4. "created_at", DateTime

    5. "updated_at", DateTime

  Country:

    2. "Country", Primary key

    3. "user_id", integer

  state:

    2. "state", Primary key

    3. "user_id", integer

    4. "country_id",

  city:

    2. "city", Primary key

    3. "user_id", integer

    4. "state id",

    5. "country_id"

  Personal info:

    1. "id". integer

    2. "Age", integer, required

    3. "Gender", only M or F, required

    4. "user_id", integer

## 6. NORMALIZATION:

  1NF: each data peice contains only atomic values

  2NF: There is no repeating data

  3NF: There are no nested dependencies


===========================================================================
===========================================================================
===========================================================================


# Intermediate

### You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.

## 1. SYSTEM GOALS:

  Display username next to links with time posted, display comments with username next to each comment. Display a hierarchy of comments. Display points for each post, display points for each comment. keep track of posts each user votes on.

## 2. ENTITIES:

  Users with email, users upvoted posts, posts comments, nested comments.

## 3. ATTRIBUTES AND TYPES:

  Users:

    1. "Username". 4-32 characters, string, unique, required

    2. "email". string, unique required

  Links:

    1. "title", 4-180 characters, string, required

    2. "url", string, required

  comments:

    1. "comment", 1-3000 characters, string, required


## 4. RELATIONSHIPS:

  This is a one to many relationship because we can have one user that relates to many comments, and many posts. One post can have many comments. One parent comment can have many nested children.

  However, many child comments can have many parent comments and many child comments so there is a many to many relationship. One join table is needed for comment hierarchy.

  AND, many users can have many upvoted posts.

## 5. TABLES:

  Username:

    1. "user_id". integer

    2. "username". 4-32 characters, string, unique, required

    3. "email". string, unique required

    4. "created_at", DateTime

    5. "updated_at", DateTime

  Links:

    1. "link_id", integer

    2. "title", 4-180 characters, string, required

    3. "url", string, required

    4. "user_id", integer

    5. "points", integer

    5. "created_at", DateTime

    6. "updated_at", DateTime

  parent_comment:

    1. "comment_id", integer

    2. "text", 1-3000 characters, string, required

    3. "user_id", integer

    4. "points", integer

    5. "created_at", DateTime

    6. "updated_at", DateTime

  comment_join_table:

    1. "parent_comment_id", integer

    2. "child_comment_id", integer
    (An algorithm that sorts comments and posts by creation time and will be needed)

  upvoted_posts_join_table:

    1. "user_id", integer

    2. "link_id", integer

## 6. NORMALIZATION:

  1NF: each data peice contains only atomic values

  2NF: There is no repeating data, except for necessary join tables

  3NF: There are no nested dependencies

===========================================================================
===========================================================================
===========================================================================


# Advanced

### You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?

## 1. SYSTEM GOALS:

  Display lists of all products with prices, keep track of all users order history and shipping history. Keep track of user address and relate it to an order.

  I wouldn't delete all user data and oder history if a user deletes their account because the company still needs that info for their records

## 2. ENTITIES:

  - products

  - users

  - orders


## 3. ATTRIBUTES AND TYPES:

  Users:

    1. "Username". 4-32 characters, string, unique, required

    2. "email". string, unique required

  User address:

    1. "country", string, required

    2. "state", string, required

    4. "city", string, required

    5. "zip", integer, required

    6. address, string, required

  products:

    1. "product_name", 4-180 characters, string, required

    2. "url", string, required, unique

    3. "picture", jpeg

    4. "description", text, 4-3000 characters, required

  orders:

    1. "products", integers

    2. "quantity", integer

    3. customer_id, integer

    4. delivery_address,


## 4. RELATIONSHIPS:

  For every one product there are many orders.

  For every one user there are many orders

  for every one order there are one user and many products

  for every one user there are (potentially) many user addresses

  I need to split an order into multiple tables and have a many to many relationship for


## 5. TABLES:

  User:

    1. "user_id". integer

    2. "first_name". 4-64 characters, string, required

    3. "last_name". 4-64 characters, string, required

    4. "email". string, unique required

    5. "created_at", DateTime

    6. "updated_at", DateTime


  User_addresss:

    1. "address_id", integer

    2. "country", string, required

    3. "state", string, required

    4. "city", string, required

    5. "zip", integer, required

    6. "street_address", string, required

    7. "user_id", integer

    8. "created_at", DateTime

    9. "updated_at", DateTime


  Product:

    1. "product_id", integer

    2. "product_name", 4-180 characters, string, required

    2. "url", string, required, unique

    3. "picture", jpeg

    4. "description", text, 4-3000 characters, required

    5. "created_at", DateTime

    6. "updated_at", DateTime

  order:

    1. "order_id" integer

    2. "user_id" integer

    3. "address_id", integer

    5. "time_placed", DateTime

  order_item:

    1. "order_item_id" integer

    2. "price", integer

    3. "product_id", integer

  order and order_item join table:

    1. "order_id" integer

    2. order_item_id, integer

## 6. NORMALIZATION:

  1NF: each data peice contains only atomic values, the street_address could be split up but I think it is fine

  2NF: There is no repeating data, except for necessary join tables

  3NF: There are no nested dependencies
