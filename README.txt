# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Problem 1.

Goals: Students should be able to see available courses, and take multiple courses. Each course has multiple lessons. Lessons have a title and body.

Models:
  Students
  Courses
  Lessons

Tables:
  Students:
    First name: varchar(length)
    Last name: varchar(length)
    Id: big int(unique)

  Courses:
    Name: varchar(length)
    Id: big int(unique)
    description: text

  Lessons:
    Title: varchar(length)
    Body: mediumtext
    Id: big int(unique)
    CourseId: big int

    //join table for many to many relationships
  Join Table(Students and Courses):
    Student ID: big int
    Course ID: big int
    (student id and course id combination should be unique)

    Normalization:
    --------------

    First Normal Form checked.
    Second normal form
    --------------------
    1. Having a composite key - checked
     - made join table for many-to-many relationship between students and courses
    2. Composite key combination should be unique - checked


Problem 2:
  ==========
  Goals: To categorize users based on demographic information.
  Models:
  -------
  1. User
  2. Profiles

  Tables:
  -------
  1. User
  2. Profile
  ---------
  User
    1. id (big int, unique)
    2. Username (varchar(15))
    3. Password (varchar(15))

  Profile
    0. ProfileId (big int, unique)
    1. Email (varchar)
    2. City (varchar(10))
    3. State (char(2))
    3. Country (varchar)
    4. Age (small int)
    5. Gender (char(1))
    6. UserId (foreign key, unique, big int)

  Relationships: one to one between user and profile

  First Normal Form-
    Store 1 data piece per row/column

  Second Normal Form-
    Do we have composite key?
    No redundant data

  Third Normal Form-
    Data only dependent on primary key

Intermidate

  You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.

  Models:
    User
    Commentable

  Tables:
    Users:
      id (big int, unique)
      username (varchar, unique)
      email (varchar, unique)
      password (varchar)

    Commentables:
      id (big int, unique)
      parentId (big int, foreign key)
      title (varchar)
      body (mediumtext)
      createdAt (date)
      userId (big int, foreign key)

    Relationships-

    Parent to child comments- one to many
    Users to comments- one to many

    1NF - checked
    2NF - checked
    3NF - checked


  Advanced
  ========

You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?

Goals: track everything about an order and save.

Models:
  Users
  Products
  Orders
    -fulfilled (false, true)


  Tables:
  --------
    User:
      UserId (big int, unique)
      username (varchar, unique)
      Email(varchar, unique)
      password (varchar)

    Products:
      ProductId (big int, unique)
      Name (varchar)
      Location (varchar)
      OrderKey (big int, foreign key)

    Orders:
      OrderId (big int, unique)
      UserId (big int, foreign key)
      Address(varchar)

    Shipments:
      shipmentId (big int, unique)
      Address(varchar)
      ShippedDate(DATE)
      OrderId(big int, foreign key, unique)

    Relationships:
    --------------
    User-Order (one to many)
    Order-products (one to many)
    Order-Shipments (one to one)

    Normalization:
    --------------
    1NF --> Everything is granular --checked
    2NF --> a) Composite Key? -- All primary key, foreign key combinations are going to be unique
            b) Redundancy? -- No
            So, 2NF --checked
    3NF --> Data should be only dependent on primary key --checked
