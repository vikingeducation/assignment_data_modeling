Basic ERM Exercises
Write down models, columns, validations, and associations to implement a given product 

Goal: Serve up lessons for students that request them. 
Entities: 
   Students
   Courses
   Lessons 
Relationships:
   Students to courses - many to many
   Courses to lessons - one to many
Attributes:
   Students - ID (primary key) (integer)
            - first name (short string)
            - last name (short string)
            - email (short string)
   Courses  - ID (primary key) (integer)
            - title (short string)
            - description (long string)
   Lessons  - ID (primary key) (integer)
            - title (short string)
            - description (longer string)
            - courseID (foreign key) 
   Students & Courses - studentID (foreign key) (integer)
                      - courseID (foreign key) (integer)
                      - this is a composite key

Goal: store profile page for new user on login site
Entities:
   Users
   Profiles
Relationships:
   Users to profiles - one to one
Attributes:
   Users - userID (primary key) (integer)
         - email (short string)
         - username (short string)
         - password (short string)
   Profiles - profileID (primary key) (integer)
            - city (short string)
            - state (short string)
            - age (integer)
            - gender (short string)
            - userID (foreign key)

Goal: build a message board (one room)
Entities:
   Users
   Messages
   Comments
   Comments on comments
Relationships:
   Users to messages - one to many
   Users to comments - one to many
   Messages to comments - one to many
   Comment to comment-on-comment - one to many
Attributes:
   Users - userID (primary key) (integer)
         - email (short string)
         - username (short string)
         - password (short string)
   Messages - messageID (primary key) (integer)
            - message text (long string)
            - time/date of post (time format)
            - time/date of last edit (time format)
            - author - userID (foreign key) (integer)
   Comments - commentID (primary key) (integer)
            - comment text (long string)
            - time/date of comment (time)
            - time/date of last edit (time)
            - author - userID (foreign key) (integer)
            - message - messageID (foreign key) (integer)
   Comment-on-Comment - commentOnComment ID (primary key) (integer)
                      - comment on comment text (long string)
                      - time/date of comment-on-comment (time)
                      - time/date of comment-on-comment last edit (time)
                      - author - userID (foreign key) (integer)
                      - commentID (foriegn key) (integer)

Goals: Build a simplified amazon. Handle quantity of items in each order. Save shipping information.

Entities:
   Users
   Orders
   Products
   Shipments
   Addresses
Relationships:
   Users to Orders - one to many
   Users to Shipments - one to many
   Users to Addresses - one to many
   Orders to Products - many to many
   Orders to Shipments - many to many
   Shipments to Addresses - one to many
Attributes:
   Users - userID (integer, unique) (primary key)
         - addressesID (integer, unique) (foreign key)

   


         
   



