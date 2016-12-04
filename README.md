# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

################################################################################################

You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.

################################################

Entities & Attributes

  Students
    Name - str
    Email -emailstr
    What courses they take (many) - many to many relationship with courses.
    Completed Lessons (many) -many to many relationship with lessons

  Courses
    Lessons - one to many relationship
    Students enrolled - many to many relationship with students.
    Title -string
    Description - string

  Lessons
    Course they belong to - foregin key
    Title - string
    Body - bigtext
    Students Completed - many to many relationship with students

################################################

Table Students
  column - first_name -str
  column last_name - str
  column -email - emailstr

Table Courses
  column - Title -str
  column -description - str

Table Lessons
  column - Course ID - foregin key
  column - Title - string
  column - Body  - text

Join Table - Courses Taken
  column - course id
  column - student id

Join Table - Lessons Completed
  column - lesson id
  column - student id

################################################################################################

You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.

Goal: To allow users to keep profiles with relevant information, including gender, age, location. Location should reflect reality if reality changes. Each user should have one profile, linked by id.  

################################################

User
  - Email - string
  - Username - string
  - Password - string
  - Profile ID - key

Profile
  - Birthday - date
  - City ID - key

City
  - Name - string
  - State ID - key

State
  - Name - string
  - Country ID - key

Country
  - Name - string

Gender
  - Name - boolean (string?)

################################################

Table - User
  column - username
  column - email
  column - password
  column - profile ID

Table - Profile
  column - gender
  column - birthday
  column - city ID

Table - City
  column - name
  column - State ID - key

State
  column - Name - string
  column - Country ID - key

Country
  column - Name - string

Gender
  column- Name - boolean (string?)

Join Table - Location (City & State)
  column - city ID
  column - state ID

Join Table - Location (State & Country)
  column - state ID
  column - country ID

################################################################################################

You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.

Goals: Create a robust system to deal with comment tracking, specifically with nested comments. Note that there is a "root comment" that links to the main link.

################################################

Entities & Attributes

Users
  username - string
  email - string
  user ID - key

Links
  user ID - foreign key
  url - url

Comments
  user ID - foreign key
  body - text
  parent link - can be nil or link ID - foreign key or nil
  parent comment - foreign key or nil

#####

Link Comment
  body
  user ID
  parent link - one link to many comments

Child Comment
  body
  user ID
  parent comment - one parent comment to many child comments

#####

Table - Users
  column - username
  column - email
  column - ID

Table Links
  user ID
  url

Comments
  user ID - foreign key
  body - text
  parent link - can be nil or link ID - foreign key or nil
  parent comment - foreign key or nil

 ################################################################################################

 You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?

 ################################################

Entities & Attributes

 Users
  username
  address
  email
  password
  orders

 Orders
  products (quantity in link table)
  shipments

 Products
  name 
  description
  inventory
  price

 Shipments
  order
  carrier
  shipment date

 Address
  (same implementation as profile addresses in Easy 2)


Table User
  col - username
  col - address id 
  col - email
  col - password
  col - ID

Table Orders
  col - User ID
  col - ID

Table Products
  col - name 
  col - description
  col - inventory
  col - price

Table Shipments
  col - order ID
  col - Address ID
  col - carrier
  col - shipment date

Table Address
  col - User ID 
  col - street address
  (see other implementation for details)

Join Table - Users to Order
  col - User ID
  col - Order ID

Join Table - Order to Product
  col - Order ID
  col - Quantity
  col - Product ID


 ################################################################################################

(Optional) You want to collect analytics data for visitors and logged-in-users who are visiting your website. This includes basic information like page views and more advanced things like link clicks and time on page. You ideally want to tie this information back to a given user if possible. Design the data model for this analytics infrastructure. You'll have to use your judgement about what additional attributes would be interesting to track

################################################

Entities & Attributes

  Users
    -username
    -id 

  Pages
    - page url
    - links present (many to many)

  Visit 
    - visit ID
    - when visited
    - when left
    - user ID 
    - page ID

  Links 
    - url 
    - page ID

  Clicks 
    - link ID
    - vist ID 

Tables

  Table Users
    col - username - string
    col - id - key

  Table Pages
    col - page url - string

  Table Visit 
    col - visit ID - Primary Key
    col - when visited - Date Time
    col - when left - Date time
    col - user ID - Foreign Key
    col - page ID - Foreign Key

  Table Link 
    col - url - url

  Table Clicks
    col - time_at - DateTime
    col - visit ID - Foreign Key
    col - link ID - Foreign Key

  Join Table Pages & Links
    col - link ID - Foreign Key
    col - page ID - Foreign Key

  Table Messages
    col - sender ID
    col - reciever ID