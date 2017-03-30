# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

DAVID WIESENBERG

DATABASE BASICS

DESIGNING DATA MODELS

ERM

System goals

2.   Entities (models)

3.   Attributes (columns)   4. Types    Validations/Associations

5.   Relationships between entities

6.   Normalize data

Basic

ERM

1.   System goals.
  Keep track of courses and course lessons
  Keep track of users and their courses/lessons

2.   Entities (models)
  Course, Lesson, User-login, User-demographics

3.   Attributes (columns)   4. Types       Validations/Associations
  Course
  Course ID        Integer       Must be present, 4 chars?
  Title          Short text        Must be present, 4 chars min?
  Description        Long text       
  User ID        Integer       Must be present, Foreign ID

  Lesson
  Lesson ID          Integer       Must be present, 4 chars?
  Title            Short text        Must be present, 4 chars min?
  Body           Long text       
  Course ID        Integer       Must be present, Foreign ID

  User-login
  User-ID        Integer       Must be present, 4 chars?
  Name first         Short text        Must be present, 4 chars min?
  Name last        Short text        Must be present, 4 chars min?
  Email            Short text        Must be present, 4 chars min?

  User-demographics
  User ID        Integer       Must be present, 4 chars?
  City           Short text      
  State            Short text      2 chars
  Country          Short text      In table (could be a code related
                  to code/full name file)
  Age          Integer       2 chars
  Gender         Short text      1 char M/F/O

5.   Relationships between entities
  Course one-to-many Lessons
  User-login one-to-many Courses
  User-login one-to-one User-demographics

6.   Normalize data
  Data is normalized


Intermediate

ERM

1.  System goals
  Author = User … (link to display user article) plus link to comments —> link to sub-comments

  (a) author posts links
  (b) links displayed with comments links
  (c) can read or add comments
  (d) can add comments to a parent comment

2.   Entities (models)
  Author      Article   Comment

3.   Attributes (columns)   4. Types    Validations/Associations
  Author
  Author ID         Integer   Max of 4?
  Email           Short text
  
  Article
  Article ID          Integer   Max of 4?
  Article body          Long text
  Author ID**       Integer   Max of 4?
  
  Comment
  Comment ID          Integer     Max of 4?
  Parent ID         Integer     Composite foreign key
  Parent Type         Short Text      Composite foreign key
              “Article” or “Comment” only*
  Comment body        Long text
  Author ID**       I       Integer   Max of 4?


to differentiate, that is, from which to decide whether to access the article or comment table to get details of the parent



5.   Relationships between entities
  Author one-to-many Article
  Article one-to-many Comment
  Comment one-to-many Comment (note: but only to sub-comments)

6.   Normalize data
  Normalized


Advanced  

ERM

1.   System goals
Track product, customer = user, order, shipments
(a) Design data model
(b) Handle order item quantities
(c) Where has order been shipped?
(d) How handle historical data (customer deletes account)? Ans: add “deleted” field to Customer table and amend analysis accordingly?

2.   Entities (models)
  Customer, Address, Product, Order, Order-Item, Shipment, Invoice

3.   Attributes (columns)   4. Types    Validations/Associations
  Customer
  Customer ID         Integer
  Name*           Short Text
  Billing Address*        Long Text   Atomize this field
  Shipping Address*       Long Text   Atomize this field
  Address table
  Address ID
  Address*
  Address Type          Short Text    Values: “Billing”, “Shipping” or “Both”
  Customer ID         Integer   Foreign key
  Product
  Product ID          Integer
  Description         Text
  Price           Decimal
  Order-Item
  Order ID          Integer
  Item ID           Integer
  Customer ID         Integer
  Order Date          Date
  Item
  Item ID           Integer
  Quantity          Integer
  Product ID          Integer   Foreign key
  Order ID          Integer     Foreign key
  Shipment
  Delivery ID         Integer
  Delivery Date         Date
  Order ID          Integer   Foreign key
  Address ID          Integer   Foreign key; i.e., shipping address 
                chosen by customer
   Invoice
  Invoice ID          Integer
  Invoice Date          Date
  Order ID          Integer   Foreign key
  Address ID          Integer   Foreign key, i.e., invoice address
                chosen by customer


5.   Relationships between entities
  Customer one-to-many Order-Item
  Customer one-to-many Address
  Order one-to-one Invoice (separate because traditional?) 
  Order-Item one-to-many Item
  Order one-to-many Shipment 
  Product many-to-many Customer 
    (could have Product-Customer join table for this if useful)


6.   Normalize data
  Normalized
