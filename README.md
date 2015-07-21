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

1. ID integer
2. name string

Comment

1. Comment ID integer
2. Body string
3. Parent ID integer
4. Parent-type postID or commentID integer
5. user ID integer



Example 4

Entities: User, Products, Orders, Shipment, Billing
Relationship: 
User has many orders, order has one user
Orders has many products, products have many orders

Order has one one billing and shipment address, bill/ship has many orders

User
1. ID integer
2. username string
3. password string

Products
1. ID integer
2. name string
3. description string

Adreess

1. Address ID integer
2. house number integer
3. street name string
4. city string
5. state string
6. zip code string
7. country string

Billing
1. Billing ID integer
2. Credit card number string
3. first name string
4. last name string
5. MM/YY date
6. CVC string
7. Address ID for billitg integer

Shipment
1.Shipment ID
2.Status
3. Address ID for shipment, integer

Order

1. OrderID integer
2. UserID integer
3. Time of the order, date
4. Shipment ID, integer
5. BillingID integer

Join Orders/Product
1. OrderID integer
2. ProductID integer
3. Quantity integer



Example #

Entities: Visitor, User, PageViews, Link

Visitor => User

Page has many links, link has one page
Visiotr has many views/pages, page has many visitors
Visitor has many links=click, links=click has one visitor

Visitor ID-

1. Visitor ID integer
2. IP string
3. Browser string
4. Device type string

User ID-

1. UserID integer
2. Username string
3. Password string
4. VisitorID integer

Link

1. LinkID integer
3. Title string
2. PageID integer

Page

1. PageID integer
2. URL string
3. Title string
4. Body string


Joined Page/Visitors- 

1. PageID integer
2. VisitorID integer
3. Time arrived datetime
4. Time left datetime

Joined VisitorID/LinkID

1. VisitorID integer
2. LinkID integer
3. Time clicked datetime


#How namy clicks on the page today?
# Dynamic generate view count? Time on page?



