# assignment_data_modeling
Mmmmm.... dataaaaa....
Josh Masland
Thomas LO

*Include your ERM modeling "pseudocode" in the space below*

Basic

1.
  Goals: The goal is to keep track of all the courses and their associated lessons.
  Entities: Courses
    Attributes: Title and Description
  Entities: Lesson
    Attributes: Title and Body Text
  Type: Title of each will be a Text
  Type: Description and body text will be Text

  Constraints: No two courses can have the same name. No two lessons within a course can have a same name. Title's for both entities a maximum amount and cannot be empty. Description and Body Text cannot be empty.

  Relationships: One to many relationship. One Course to many Lessons.

  Design: One table for each Entity(two in total). The lessons table will have the Courses Primary ID as a foreign key in a column.

  Course
    Primary ID
    Title
    Description

  Lessons
    Primary ID
    Title
    Body Text
    Course ID(FK)

2.
  A user can only have one profile. The profile includes location data which could be redundant, so we made a join table to allow many-to-many relationships between profile and location (such as one person having more than one shipping address, or many people living in the same place)

  User (1:1 with profile)
    id (PK)
    name
    email

  Profile (1:1 with user, x:x with location through ProfileLocation)
    id (PK)
    age
    gender
    user id (FK)
    ProfileLocation id (FK)

  ProfileLocation
    id (PK)
    profile id (FK)
    location id (FK)

  Location (x:x with profile through ProfileLocation)
    id (PK)
    country
    state
    city
    ProfileLocation (FK)

Intermediate

1.
  The Goal is to figure out the relationship between comments on submissions, and comments on comments and how each item fits in the hierarchy. Due to the two difference between post and comment, we used two join tables to relate them. One table for relating a post to its comments, and another for relating a comment to its child comments.

  Post (1:x with comments through PostComment)
    id (PK)
    Link, text, valid link
    Source, text

  Comments (1:1 post through PostComment, 1:x comment through CommentComment)
    id (PK)
    message, text

  PostComment
    post id (FK)
    comment id (FK)

  CommentComment
    parentComment id (FK)
    childComment id (FK)

Advanced

1.
  The goal is keep track of products, users, orders, shipments, etc. - everything necessary to get the right products to the right people and keep track of every step of the transaction.

  Users (has many shipping addresses, has many billing addresses, has many orders)
    id (PK)
    first_name, string, must exist
    last_name, string, must exist
    email, string, must exist, must be valid
    gender, char
    prime_status, bool

  Products (x:x product)
    id (PK)
    title, string, must exist
    description, text, must exist
    price, float (2 dec places), must exist
    quantity_in_stock, integer, must exist

  Orders (x:x product, 1:x shipment)
    id (PK)
    user id (FK)
    quantity, integer, must exist

  OrderProduct
    order id (FK)
    product id (FK)

  Shipments
    id (PK)
    address id (FK)
    order id (FK)

  ProductShipment
    product id (FK)
    user id (FK)

  Shopping Cart

  UserBillingAddress (join table)
    user id
    address id

  UserShippingAddress (join table)
    user id
    address id

  Address
    country
    city
    state
    zip code

  BillingInfo

  UserHistory
