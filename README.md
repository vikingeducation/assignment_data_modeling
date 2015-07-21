# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Donald Kelsey
Garrett Weinert

Basic:
1)
System Goals
We want to display all the lessons for a course, and probably the titles.
We want to display all the content on a specific course's page.


Courses
  id - Integer, primary key
  Title - string; no more than 25 chars long, required
  Desc - string; 400 max length;

1 course to many lessons relationship.
Lesson
  id - Integer, primary key
  Title - string - string; no more than 20 chars long, required
  Body - string; required, no limit length.
  Course ID - integer reference to courses_id primary key

2)
System Goals
We want to display all the user's information to the user.
We want the user to be able to update his/her attributes except the username.


User
  username - string, 16 max chars, required, unique
  email - string, required, unique, must be a legit email (use a regex maybe?)
  password - string, alphanumeric, 16 chars *MINIMUM* length, 32 chars max length, at least 1 number/special char, required.
  age - DateTime, minimum length 13, required
  gender - Male/Female, required
  account_age - DateTime, generated at row creation, unmodifyable.
  city_id - foreign key
  state_id - foreign key
  country_id - foreign key

city, state, country are one to many with user

changing city, state, country, updates this information for all users
since they just have the city_id/state_id/country_id as a reference

City
  name - string
  population - Integer

State
  name - string
  population - Integer

Country
  name - string
  population - Integer

Intermediate:

  System Goals
  Users can post links where other users can comment on them.
  Users can comment on comments and these comments need to be nested in proper hierarchy.

  User Table
    ID
    username - string, 16 max chars, required, unique
    email - string, required, unique, must be a legit email (use a regex maybe?)
    password - string, alphanumeric, 16 chars *MINIMUM* length, 32 chars max length, at least 1 number/special char, required.

  Submission Table
    ID
    UserID - foreign key, integer
    URL - string, 1-64 chars
    Title - string 1-32 chars
    Score - Integer
    PostDate - DateTime

  Comments Table
    ID
    UserID - foreign Key, integer
    SubmissionID - foreign key, integer
    Date - DateTime,  unmodifyable.
    Score - Integer
    Body - string , max 300 chars
    ParentID - integer #reference to comment above, null if root

  User is a one-to-many of Submission
    A user can have many submissions, but a submission can only have one user

  User is a one-to-many of Comments
    A user can have many comments, but comments can only have one user

  Submission is a one-to-many of Comments
    A submission can have many comments, but comments can only be related to one submission

  ParentComments is a one-to-many of Comments
    A ParentComment can have many comments, but comments can only have one ParentComment

Advanced:
1)

Goals
We want users to be able to order things and have it ship to them.

Relationships

Products
  many to many with orders
Users
  one to many with orders
  one to many with shipments
Orders
  many to many with products
  many to many with orders
  many to one with users
Shipments
  one to many with Orders
------------------------------------

Products
  id - integer
  price - integer
  desc - string 500 max chars
  name - string 25 max chars
  manufacturer location - foreign_key - integer

Location
  city_id - foreign key, interger
  state_id - foreign key, interger
  country_id - foreign key, interger
  zip_code - Integer

ProductOrder
  product_id - Integer, foreign key
  order_id - Integer, foreign key

ProductShipments
  product_id - Integer, foreign key
  shipment_id - Integer, foreign key
  quantity - Integer

Order
  UserId - foreign key to user, integer
  location_id - Can use user's or they can input a new custom one

User
  username - string, 16 max chars, required, unique
  email - string, required, unique, must be a legit email (use a regex maybe?)
  password - string, alphanumeric, 16 chars *MINIMUM* length, 32 chars max length, at least 1 number/special char, required.
  age - DateTime, minimum length 18, required
  address_id - reference to a default delivery location
  billing_info_id - reference to billing information

Shipment
  order_id - reference to order
  location_id - pulled from order user?


The reason we split out billing info is so if there is some sort of vulnerability
related to one credit card vendor we can easily notify the user.

Billing_info
  cc_vendor, Integer, 0-however many credit card vendors we care about
  cc_num, integer, encrpyted somehow, not plain text
  billing_address_id - reference to default billing location

2)

Page Table
  ID
  Title -  string
  Body - stirng

Viewing Table
  PageID - integer , foreign key
  UserID - id if logged in, else nil
  Links Clicked - Integer
  Time on Page - DateTime





















