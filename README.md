
#Data Modeling - By Deepak

# Online learning platform
##1.  Goals
To enable online students to browse multiple courses and display lessons from a particular course.
##2. Entities
Courses and Lessons
##3-4. Attributes and Types

###Courses:
1. “title", String, 1-64 characters long, must be unique, required
2. "body", Text, no limits

###Lessons:
1. “title", String, 1-64 characters long, must be unique, required
2. “body", Text, no limits

##5. Relationships
   * Course has one-to-many relationship with Lesson
   * i.e. 1 Course can have multiple Lessons, but, 1 Lesson can belong to only 1 Course

##6. Data Model
   * Course
      * CourseID [Primary key]
      * Title
      * Desc
   * Lesson
      * LessonID [Primary key]
      * Title
      * Body
      * CourseID [Foreign key]

# User on your login site. witH demographic information like City, State, Country, Age and Gender.

##1.  Goals
To access user's profile data from user_id and to access user_ids with specific profile.
##2. Entities
Users and Profiles
##3-4. Attributes and Types
###Users:
1. "user_id", String, 1-64 characters long, must be unique, required
2. "email", String, 1-64 characters long, must be unique, required

###Profiles:
1. "city", String, 1-64 characters long
2. "state", String, 1-64 characters long
3. "country", String, 1-64 characters long
4. "age", Integer
5. "gender", Char

##5. Relationships
  * Profile has one-to-many relationship with User
  * i.e. 1 Profile can have multiple Users, but, 1 User can have only 1 Profile

##6. Data Model
  * User
    * user_name [Primary key]
    * email
    * ProfileID [Foriegn key]
  * Profile
    * ProfileID [Primary key]
    * city
    * state
    * country
    * age

#Hacker News. Users can post links, Comment on Links and Comments

##1. Goals
    * User should be able to post many Posts
    * User should be able to comment on a post
    * User should be able to comment on a comment
##2. Entities
  * Users
  * Posts
  * Comments

##3-4. Attributes
### User:
  * user_id
  * email, String, 1-64 characters long

### Post:
  * link, Text, no limit

### Comment:
  * comment, Text, no limit

##5. Relationships
  * Users have one-to-many relationship with Posts
  * Users have one-to-many relationship with Comments
  * Posts have one-to-many relationship with Comments
  * Comments have one-to-many relationship with Comments

##6. Data Model
  * User
    * user_name [Primary key]
    * email
  * Post
    * PostID [Primary key]
    * link
    * UserID [Foriegn key]
  * Comment
    * CommentID [Primary key]
    * comment
    * UserID [Foriegn key]
    * PostID [Foriegn Key]
    * PrimaryCommentID [Foriegn key]

##7. How would you make sure a comment knows where in the hierarchy it lives?
If PrimaryCommentID is not nil, the comment is a comment of another comment.
Otherwise, the comment is a comment of a post.


# E-Commerce - products, users, orders, shipments

##1. Goals
    * List all Users
    * List all products
    * List all Orders
    * List all Shipments (i.e fulfilled orders)
##2. Entities
  * Users
  * Products
  * Orders
  * OrderItems
  * Shipments

##3-4. Attributes
### User:
  * user_id
  * email, String, 1-64 characters long

### Profile
    * ProfileID [Primary key]
    * city
    * state
    * country
    * age

### Product:
  * Product_id
  * Name,  String, 1-64 characters long
  * Desc,  String, 1-64 characters long
  * Price, Integer

### Order_item:
  * OrderItem_id
  * product_id
  * quantity, Integer

### Order:
  * Order_id
  * User_id
  * order_date, date

### Shipment:
  * Shipment_id
  * Order_id

##5. Relationships
  * Users have one-to-many relationship with Profile
  * Users have one-to-many relationship with Orders
  * Orders have one-to-many relationship with Order_item
  * Order_item have one-to-many relationship with Products
  * Order has one-to-one relationship with Shipment

##6. Data Model
### User:
  * user_id
  * email, String, 1-64 characters long
  * profile_id [Foriegn Key]

### Profile
  * ProfileID [Primary key]
  * city
  * state
  * country
  * age

### Product:
  * Product_id
  * Name,  String, 1-64 characters long
  * Desc,  String, 1-64 characters long
  * Price, Integer

### Order_item:
  * OrderItem_id
  * product_id [Foriegn Key]
  * order_id   [Foriegn Key]
  * quantity, Integer

### Order:
  * Order_id
  * User_id [Foriegn Key]
  * order_date, date

### Shipment:
  * Shipment_id
  * Order_id [Foriegn Key]
