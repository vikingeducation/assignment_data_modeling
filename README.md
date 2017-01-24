# assignment_data_modeling
Mmmmm.... dataaaaa....

Author : Behdad Analui

*Include your ERM modeling "pseudocode" in the space below*



/***************** Basic 1: (free online learning platform) *****************/

The main goal is for a student to surf and see available courses and lessons and access them.
Looks like there's no need to keep track of students, so there's no need to have "Student" entity.
However there are 2 main entities:
1) Course
2) Lesson

Course --> 	1 - Title (string with a limit of 50 chars)
			2 - Description (text with a limit of 500 chars?)
			3 - Lessons (Course can contain many lessons)

Lesson --> 	1 - Title (string with a limit of 50 chars)
			2 - Body (text with no limit perhaps)
			3 - Course (A lesson can only be part of one course)

The main relationship is Course(one) to Lesson(many). So finally here are the tables:

Course Table
----------------------
PK	Title 	Description


Lesson Table
----------------------
PK	Title 	Body 	FK(courseID)


Tests:
1 ) Each table is doing one job perfectly and all columns are as fine and descriptive as possible
2 ) No redundency
3 ) No composite keys


/***************** Basic 2: (profile page on a login site) *****************/

Let's say we have a table for User already set up, PK is optional since we can make sure email/username are unique by themself, but having an integer primary key simplifies queries:


User Table
----------------------
PK	Email 	Username

The user typically has one and only one profile page. (Sometimes in some apps, the user has multiple profiles where only the looks of the profile changes like themes or colors but the content and data are the same and are unique) Sometimes, for some apps like Uber, there can be passenger profile and/or Driver profile but for our use case we consider one single profile.

Therefore we can stick the demographic info to the user table itself:


User Table
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
PK	Email 	Username 	City(string max 25 chars) 	State (string abreviated maybe limit 2 chars or full state limit 20 chars) 	Country(string limit to 30 chars) 	Age(short int) 	Gender(string limit to one char, forexample 'M', 'F', 'T',...)

This is fastest. Or we can have choice tables to reduce redundancy forexample for Country, State, City:

Location Table
----------------------
PK	Country State City


Then, the location table contains unique info about all cities and we insert the key into User Table:

User Table
---------------------------------------------------
PK	Email 	Username 	locationID	Age 	Gender


/***************** Intermediate 1: (message board) *****************/

Users can post links, then they can comment, they can then comment on comments.

Obviously, we have a User(Author) table with a PK (authorID) and some info like name, email, ...

Author Table
----------------------------
authorID	Email 	Username

Now if we think about it the posts and comments create a tree hierarchy where a post can have many comments, a comment can only have one parent(it can be comment or a post).
Since we can have 2 types of comments (one which is under a post, one which is under another comment we can introduce a column called subcomment which is boolean, and if it's true it means that parentID is indeed a commentID, if it's false, it means parentID is postID)


Post Table
-------------------------------------------------------------------------------------------------------------------------------------
postID	Title (string) MainSource(which website, can be a url or string)	Posted_at(date)	Points(integer, how many points) authorID(key integer)

Comment Table
----------------------------------------------------------------------------------------------------------------------------
commentID	Body(text) 	authorID(key integer) Type(boolean) Posted_at(date) parentID(key integer, can be postID or commentID)

Now we can trace a comment by looking at type and follow parentID to reach the parent post.


/***************** Advanced 1: (e-commerce) *****************/

We have users, products, orders, shipments, ...

We have some obvious table and columns:


User Table
---------------------------------------
PK	Email 	Username 	Age 	Gender

Product Table
-----------------------------------------------
PK	Name 	Price 	Availability	Size Reviews

Order Table
-------------------------------------------------------------------------------------
PK	Name Created_at FinalPrice(Optional, since it can be calculated using other info)

Review Table
---------------------
PK	Rating Created_at

PaymentMethod Table
-----------------------------------------
PK	CC Number SecurityCode ExpirationDate

Shipping Address
-----------------------------------------
PK	Address(multiple columns with country,city,state,street,...)

Relationships:

1)  User can have multiple shipping addresses, shipping address can be for multiple users for example when 2 people from same house has 2 different acounts (many to many)
2)  User can have multiple payment methods but a payment method is only for one user (one to many)
3)  User can place multiple orders, but an order has only one owner (one to many)
4)  Order can have multiple product and a product can be in multiple orders (many to many)
5)  Order can have one shipment address and a shipping address can be used for multiple orders (one to many)
6)  Cart is like an order which is not placed yet, so we can combine these 2 tables and have a "Placed?" column which is a boolean
7)  Review is only for one product but one product can have many reviews (one to many)
8)  Review is posted by one user but one user can have many reviews(one to many)
9)  Order can have multiple payments (split payments) but for simplicity we ignore this, a payment method can be used across multiple orders(one to many)
10) Order can have subpayments like shipping/handling/tax, for simplicity we ignore that

User Table
--------------------------------------
PK	Email 	Username 	Age 	Gender

Product Table
----------------------------------------
PK	Name 	Price 	Availability	Size

Order Table
--------------------------------------------------------------------------------------------------------------------------------------
PK	Name Created_at FinalPrice(Optional, since it can be calculated using other info) userID(3) shippmentID(5) Placed?(6) paymentID(9)

Review Table
--------------------------------------------
PK	Rating Created_at productId(7) userID(8)

PaymentMethod Table
---------------------------------------------------
PK	CC Number SecurityCode ExpirationDate userID(2)

Shipping Address
----------------------------------------------------------------
PK	Address(multiple columns with country,city,state,street,...)

Join Table(1):  UserShippingAddress
------------------
shippingID	userID	

Join Table(4):  OrderProduct
------------------
orderID	productID	





