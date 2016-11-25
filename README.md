# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Completed by James and Luke



## Basic 1

**Goal** -- We want to store basic student data and keep track of their progress in their courses

**Entities**
  Students
  Course
  Lesson
  StudentCourses
  StudentsLessons

**Student Attributes**
  Username -- Chars -- Length Limit
  Email Address -- Chars -- Length Limit

**Course Attributes**
  Title -- Chars -- Length Limit
  Description -- Chars -- Length Limit

**Lesson Attributes**
  Title -- Chars -- Length Limit
  Body Text -- Chars -- Length Limit
  Course Id(Foreign Key) -- Integer 

**StudentCoursesAttributes**
  StudentID(Foreign Key)
  LessonID(Foreign Key)
  Completed -- Boolean
  Grade -- Decimal -- Between 0 and 100

**StudentLessonsAttributes**
  StudentID(Foreign Key)
  CourseID(Foreign Key)
  Completed -- Boolean
  Grade -- Decimal -- Between 0 and 100 

**Relationships**
  One course has many lessons
  Many students have many courses
  Many students have many lessons



## Basic 2

**Entities**
  Students
  Profiles

**Student Attributes**
  Username -- Chars -- Length Limit
  Email Address -- Chars -- Length Limit

**Profile Attributes**
  City -- Chars -- Length Limit
  State -- Chars -- 2 Length Text Field
  Country -- Chars -- Length Limit
  Age -- Integer -- Between 0 to 120
  Gender -- Chars -- Length Limit

** Relationships**
  One student has one profile


## Intermediate

** Goal**
  Represent the relationship between users, posts and comments

** Entities**
  Users
  Posts
  Comments

**User Attributes**
  UserID -- Integer (primary key)
  Username -- Text
  Email Address -- Text
  Hashed Password -- Text

**Post Attributes**
  PostID
  Title -- Text -- Length Limit
  Link -- Text
  Creation Timestamp -- Timestamp
  Points -- Integer -- Above 0
  UserID (foreign key)

**Comment Attributes**
  CommentID
  Content -- Text -- Length Limit
  Creation Timestamp -- Timestamp
  Edit Timestamp -- Timestamp
  Edited -- Boolean
  Score -- Integer -- Above 0
  UserID (foreign key)
  ParentID (foreign key)
  Parent Type (foreign key)

**Relationships**
  One user has many posts
  One user has many comments
  One post has many comments
  One comment has many comments



## Advanced

** Goal**
  To track how money has been spent, track profitability by order, etc.
  To allow customers to look at upcoming shipments of orders
  To look at list of products to make a purchase

** Entities **
  Users
  Products
  Orders
  Shipments
  Address
  Credit Card
  ProductOrders

** User Attributes **
  User ID -- Text
  First Name -- Text
  Last Name -- Text
  Email Address -- Text
  Hashed Password -- Text
  Profile Image URL -- Text (file path)

** Address **
  ID
  Line 1 -- Text
  Line 2 -- Text
  City -- Text
  State -- Text -- 2 chars
  Zip -- Integer -- 5 chars
  Country -- Text
  Phone Number -- Text 
  UserID (foreign key)

** Credit Card **
  CC ID -- Integer
  CC Number -- Integer
  Expiration Date -- Date Stamp
  Security Code -- Text - 3 chars
  Billing Address ID (foreign key)
  User ID (foreign key)

** Products **
  Product ID -- Integer
  Title -- Text
  Description -- Text
  Price -- Decimal
  Profile Image URL -- Text (file path)

** Orders **
  Order ID -- Integer
  User ID -- Integer
  CC ID -- Integer
  Shipping Address ID
  Billing Address ID

** ProductOrder **
  Product ID (foreign key)
  Order ID (foreign key)
  Quantity
  Price

** Shipments **
  ID -- Integer
  Order ID
  Vendor Address (foreign key)

** Relationships **
  One user has many credit cards
  One billing address has many credit cards
  One user has many shipping addresses
  One user has many billing addresses
  An order has many shipments
  Many orders have many products through productorders
  One credit card has many orders
  One shipping address has many orders
  One billing address has many orders
  One user has many orders
  A vendor address has many shipments



