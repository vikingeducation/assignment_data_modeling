# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Example 1

Entities: Lessons, Courses, Students

Lessons-

1. ID, int
2. Title, string, required, must be unique
3. Content, string, no limits

Courses-

1. ID, int
2. Title, string, required
3. Description, string

Students-

1. ID, integer
2. First_Name, string
3. Last_Name, string

Join Tables

StudentCourses Table

1. Student_ID integer
2. Course_ID integer

CourseLesson Table

1. Course_ID integer
2. Lesson_ID integer



Example 2

Entities: User, Address

User-

1. ID, integer
2. username, string
3. email, string
4. password, string
5. age, integer
6. gender, string
7. address_ID, string

Address-

1. ID, integer
2. house number, integer
3. street name, string
4. city, string
5. state, string
6. zip code, integer
7. country, string



Example 3

Entities: Users, First Level Comments, Second Level Comments

User

1. ID
2. name

Comment

1. Comment ID
2. Body
3. Parent ID
4. Parent-type postID or commentID
5. user ID



Example 4

Entities: User, Products, Orders, Shipment, Billing
Relationship: 
User has many orders, order has one user
Orders has many products, products have many orders

Order has one one billing and shipment address, bill/ship has many orders

User
1. ID
2. username
3. password

Products
1. ID
2. name
3. description

Adreess

1. Address ID
2. house number
3. street name
4. city
5. state
6. zip code
7. country

Billing
1. Billing ID
2. Credit card number
3. first name
4. last name
5. MM/YY
6. CVC
7. Address ID

Order

1. OrderID
2. UserID
3. time of the order
4. ShipmentID
5. BillingID

Join Orders/Product
1. OrderID
2. ProductID
3. Quantity



Example #

Entities: Visitor, User, PageViews, Link

Visitor => User

Page has many links, link has one page
Visiotr has many views/pages, page has many visitors
Visitor has many links=click, links=click has one visitor

Visitor ID-

1. Visitor ID
2. IP
3. Browser
4. Device type

User ID-

1. UserID
2. Username
3. Password
4. VisitorID

Link

1. LinkID
2. URL
3. Title
2. PageID

Page

1. PageID
2. URL
3. Title
4. Body


Joined Page/Visitors- 

1. PageID
2. VisitorID
3. Time arrived
4. Time left

Joined VisitorID/LinkID

1. VisitorID
2. LinkID
3. Time clicked


#How namy clicks on the page today?
# Dynamic generate view count? Time on page?



