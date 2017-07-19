# assignment_data_modeling

*Include your ERM modeling "pseudocode" in the space below*

You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.

# Student
- StudentID - Number
- Address 1 - String
- Address 2 - String
- Address 3 - String
- County - String
- Postcode - String
- Firstname - String
- Surname - String
- Enrolement date - Date
- CourseID enrolled - Number

StudentID and CourseID (composite key)

# Join Table
- CourseID
- StudentID

# Course
- CourseID - Number
- Title - String
- Description - Text
- LessonID - Number

CourseID and LessonID (composite key)

Lesson
- LessonID (Primary Key) - Number 
- Title - String
- Body - Text

--------------------------------

You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.

# User
- Username - String
- Email - String
- User ID (Primary Key)

# User_Address
- UID (Foreign key) - Number
- City - String
- State - String
- Country - String

#User_Personal
- UID (Foreign key) - Number
- Age - Number
- Gender - String

-----------------------------------

You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.



------------------------------------
You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?
