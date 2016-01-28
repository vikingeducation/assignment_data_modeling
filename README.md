# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Sam & Deepa

models, columns, validations and associations

BASIC
**All ids are integers.

1. 
Goals-Build an online learning platform (non-login)

Entities: attributes(types)
Courses:id(integer), titles(string), descriptions(text area)
Lessons:id(integer), title(string), text(text area)

Relationships:
One (Course) --> Many (Lessons)

Data Model:
Table1-Courses
Col-id, title, description
Row-single course

Table2-Lessons
Col-id, title, text, courseid (foreign key)
Row-single lesson

2. 
Goals-Build a profile page with user data

Entities: attributes(types)
User: userid, username(string), email(string), genderid, age
UserLocation: userid, cityid, stateid, countryid
City: id, city (string)
State: id, state (string)
Country: id, country(string)
Gender: id, type (string)

Relationships:
One (user) --> Many (location)
One (user) --> One (gender)

Data Model
Table1-User
Col-userid, username(string), email(string), genderid, age
Row-a unique user

Table2-UserLocation
Col-locationid, cityid, stateid, countryid, userid
Row-unique user location

Table3-City
Col-cityid, city
Row-unique city

Table4-State
Col-stateid, state
Row-unique state

Table5-Country
Col-countryid, country
Row-unique county

Table6-Gender
Col-genderid, gender
Row-unique gender

INTERMEDIATE
Goals-Build a hacker-news like message board. 

Entites: attributes(types)
User: userid, username(string)
Post:  postid, post (textarea)
Comment: commentid, comment (textarea)

Relationships
One (user) --> Many (post)
One (user) --> Many (comment)
One (post) --> Many (comment)
One (comment) --> Many (comment)

Data Model

Table1-User
col-userid, username(string)
row-unique user

Table2-Post
col-postid, post (textarea), userid
row-unique post

Table3-PostComment
col-commentid, comment (textarea), userid, postid
row-unique comment

Table4-NestedComment
col-nestedid, text (textarea), commentid
row-unique nested comment

ADVANCED
1. 
Goal-Ecommerce website. Track products, users, orders, shipments etc.

Entites: attributes(types)
Users: userid, username, firstname, lastname, email
Products: productid, productname(string), productdescription(textarea), price (integer)
Shipping Address: shipid, address
Orders: orderid, order
Shipments: shipid, 

Relationships:
One (user) --> Many (shippingaddress)
One (user) --> Many (orders)
One (user) --> Many (shipments)
One (shipment) --> Many (orders)
Many (product) --> Many (orders)

Data Model

Table1-User
col-userid, username, firstname, lastname, email
row-unique user

Table2-ShippingAddress
col-shipid, address, userid
row-unique users shipping address

Table3-Products
col-productid, productname, productdescription, price
row-unique product

Table4-Order
col-orderid, userid, shipid, shipmentid
row-unique user order

Table5-Joint(Order+Product)
col-orderid, productid
row-unique order/product combo

Table6-Shipment
col-shipmentid, shipper(?)
row-unique shipment

2. 
Goal-Build google analytics(basic) for your site.

Entities:
Visitor: visitorid (integer)
User : userid(integer), username(string), firstname(string), lastname(string), email(string)
Page: pageid(integer), url (string), views(integer)
Links: linkid
Clicks: clicksid
(Joint userid, pageid, timespent)

Relationship
Many (users) --> Many (pages)
Many (link) --> Many (pages)
One (link) ---> Many (clicks)

Data Model

Table-Visitor
col-visitorid
row-visitor

Table1-User
col-userid, username, firstname, lastname, email
row-unique user

Table2-Page
col-pageid, url
row-unique page

Table3-Link
col-linkid, url
row-unique link

Table4-Joint User/page
col-jointupid, userid, pageid, visitorid, timespent
row-timespent by a user on a specific page

Table5-Joint Link/Page
col-jointlpid, pageid, linkid
row-unique link on a page

Table6-Joint Clicks/Jointlinkpage
col-clicksid, clicks, jointplid, userid, visitorid
row-unique user clicks on specific page


