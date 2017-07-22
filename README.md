# assignment_data_modeling

*Include your ERM modeling "pseudocode" in the space below*

You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.

---------------------------------

## Summary of relationships
A student can be enrolled in many courses.
A course can be taken by many students.
A course can have many lessons but a lesson can only belong to one course.

### Student
- StudentID - Number
- Address 1 - String
- Address 2 - String
- Address 3 - String
- County - String
- Postcode - String
- Firstname - String
- Surname - String
- Enrolement date - Date

StudentID and CourseID (composite key)

### JoinTable
- CourseID
- StudentID

### Course
- CourseID - Number
- Title - String
- Description - Text
- LessonID - Number

CourseID and LessonID (composite key)

### Lesson
- LessonID (Primary Key) - Number 
- Title - String
- Body - Text

--------------------------------

You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.

## Summary of relationships
A user has personal details that can be identified by a User ID to connect them address, age and gender

### User
- Username - String
- Email - String
- UserID (Primary Key)

### User_Address
- UID (Foreign key) - Number
- City - String
- State - String
- Country - String

### User_Personal
- UserID (Foreign key) - Number
- Age - Number
- Gender - String

-----------------------------------

You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.

## Summmary of relationships
An article can only be created by one author, but an author can post many articles.
An author can comment on many articles and many sub comments.
An article can have many comments from many authors.
An comment can only have one author

### Article
- Author - String
- AuthorID - Number
- Article ID (Primary Key) - Number
- Title - String
- Link - String
- Estimated read - Number

### AuthorComments
- CommentID - Number
- AuthorID - Number

### Author
- First_name - String
- Surname  - String
- Profile Summary - String
- AuthorID (Primary Key) - Number

### Comment
- CommentID (Primary Key) - Number
- Parent_comment_ID - Number
- Summary - Text
- AuthorID (Foreign Key) - Number


------------------------------------
You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?

## Summmary of relationships
A user can buy many products.
A product can be bought by many users.
Each order can only be for one user (customer) but can have many products.
Each product can have many reviews but a review can only be created by one user.
A user can be a buyer and a seller.
A shipment can have many orders


### Product
- ProductID (Primary Key) - Number
- Description - String
- Price - Number
- UserID - String
- Price - Number
- OverallRating - Number

### ProductReviews
- ProductID - String
- AuthorID - Number
- Author_name - String
- Comment - String
- Rating - Number
- ReviewID (Primary Key) - Number


### Seller Inventory
- ProductID - String
- Quantity - Number
- UserID  - Number
- DateSold - Date


### Customer
- UserID (Primary Key) - Number 
- Rating - Number
- Username - String
- Telephone_number - String
- Address 1 - String
- Address 2 - String
- Address 3 - String
- Address 4 - String
- DateJoined - Date


### Order
- OrderID (Primary Key) - Number
- ProductID - String
- Quantity - Number
- Date_created - Date
- UserID - String
- Cost - Number


### Shipment
- ShipmentID (Primary Key) - String
- OrderID (Foreign key) - Number
- Shipment_Created - Date
- Expected_delivery_date - Date
- DeliveryAddress - Date
- ShippingNotes - String
