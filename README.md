#  "Entity Relationship Modeling" process

This is a thinking/designing project by building data models for real problems and checking them against the normalization criteria using "Entity Relationship Modeling" process.

## Basic

#### You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text.

*Goals*
We want to display list of students, where each student has a specific course chosen, possible I could see what lessons the student is on. I want to see list of courses, where each course show adequate lessons.

*Entities*
Students (Which is already in database, present only to picture)
Courses
Lessons

*Attributes, Types & Constraints*
1. Students
- first_name, string, 1-64 characters long
- second_name, string, 1-64 characters long
- email, string, 1-64 characters long, must be unique, required
2. Courses
- title, string, 4-16 characters long, must be unique, required
- description, text, no limits
3. Lessons
- title, string, 4-16 characters long, must be unique, required
- description, text, no limits

*Relationships*
Students (MANY) - Courses (MANY)
Courses (ONE) - Lessons (MANY) (unless possible that some lessons can be used by more than one course)

### STUDENTS TABLE
1. Student_ID
2. first_name
3. second_name
4. email
5. created_at
6. updated_at

### COURSES TABLE
1. Course_ID
2. Title
3. Description
4. created_at
5. updated_at

### LESSONS TABLE
1. Lesson_ID
2. Title
3. Description
4. created_at
5. updated_at
6. Course_ID

*Normalization*
1st Normal Form - Data is very atomic
2nd & 3rd Normal Form - no duplications or composite keys


#### You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.

*Goal*
We want to create profile for every user so we can see demographic info about him

*Entities*
User
Profile
Country Table

*Attributes, Types & Constraints*
1. User
- username, string, 1-20 characters long, must be unique, required
- email, string, 1-64 characters long, must be unique, required
2. Profile
- age, string, 2 characters long, required
- gender, text, must be either male of female, required
3. City Table
- City, string, 2-20 characters long, required
- Post Code, string, 2-10 characters long, required
- State, string, 2 characters long, required
- Country, string, 4-12 characters long, required

*Relationships*
User (ONE) - Profile (ONE)
Profile (MANY) - City Table (ONE)

### USERS
1. User_ID
2. Username
3. Email
4. Created_at
5. Updated_at

### PROFILES
1. Profile_ID
2. Age
3. Gender
4. Created_at
5. Updated_at
6. User_ID

### CITIES_TABLE
1. City_ID
2. City
3. Post Code
4. State
5. Country
6. Created_at
7. Updated_at

### CITIES_PROFILES TABLE
1. Profile_ID
2. City_ID
3. Created_at
4. Updated_at

*Normalization*
1st Normal Form - Data is very atomic
2nd & 3rd Normal Form - no duplications thanks to extracting separate table with cities or composite keys

## Intermediate

#### You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.


*Goal*
We want to create message board, showing links with news, under which we can see comments and comments to comments.

*Entities*
User
Posts
Comments
Comments_Relations

*Attributes, Types & Constraints*
1. Users
- username, string, 1-20 characters long, must be unique, required
- email, string, 1-64 characters long, must be unique, required
2. Posts
- title, string, 4-16 characters long, must be unique, required
- link, string, no limits, must be unique, required
3. Comments
- title, string, 4-16 characters long, must be unique, required
- description, text, no limits
- username, string, 1-20 characters long, must be unique, required
4. Comments_Relations - JOIN TABLE
- parent_comment_ID, integer
- child_comment_ID, integer


* Relationships *
User (ONE) - Post (MANY)
Post (ONE) - Comments (MANY)
Comments(MANY) - Comments(MANY)

### USERS
1. User_ID
2. Username
3. Email
4. Created_at
5. Updated_at

### POST
1. Post_ID
2. Title
3. Link
4. Created_at
5. Updated_at
6. User_ID

### COMMENTS
1. Comments_ID
2. Title
3. Description
4. Created_at
5. Updated_at
6. User_ID
7. Post_ID

### COMMENTS_RELATIONS TABLE
1. Parent_Comments_ID
2. Child_Comments_ID
4. Created_at
5. Updated_at


## Advanced

#### You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?

*Goal*
We want to create e-commerce website which helps to track users, their orders with products, shipments and control big range of products on display

*Entities*
User
Products
Orders
Shipments

*Attributes, Types & Constraints*
1. Users
- username, string, 1-20 characters long, must be unique, required
- email, string, 1-64 characters long, must be unique, required
- first_name, string, 1-20 characters long, required
- second_name, string, 1-20 characters long, required
- street_name, string, 1-20 characters long, required
- house_no, string, 1-20 characters long, required
- city_ID, integer
2. City Table
- City, string, 2-20 characters long, required
- Post Code, string, 2-10 characters long, required
- State, string, 2 characters long, required
- Country, string, 4-12 characters long, required
3. Products
- name, string, 4-16 characters long, must be unique, required
- description, string, no limits, must be unique, required
- category
- price
- image_url
3. Orders
- product_id
- quantity
- user_id
4. Shipments
- date_of_purchase
- date_of_shipping_out
- quantity
- product_id
5. Deleted_Accounts**
- username, string, 1-20 characters long, must be unique, required
- email, string, 1-64 characters long, must be unique, required
- first_name, string, 1-20 characters long, required
- second_name, string, 1-20 characters long, required
- street_name, string, 1-20 characters long, required
- house_no, string, 1-20 characters long, required
- city_ID, integer


* Relationships *
User (ONE) - Order (MANY)
User (MANY) - City_Table (ONE)
ORDERS (MANY) - PRODUCTS (MANY)
SHIPMENTS(MANY) - ORDERS(ONE) (if order can be split into few shipments)

### USERS
1. User_ID
2. Username
3. Email
4. First_Name
5. Second_Name
6. Street_Name
7. House_No
8. Created_at
9. Updated_at
10. City_ID

### CITIES_TABLE
1. City_ID
2. City
3. Post Code
4. State
5. Country
6. Created_at
7. Updated_at

### PRODUCTS
1. Product_ID
2. Name
3. Description
4. Category
5. Price
6. Units_Available
7. Image_URL
4. Created_at
5. Updated_at

### ORDERS
1. Order_ID
2. Created_at
3. Updated_at
4. User_ID

### PRODUCTS_ORDERS JOIN TABLE
1. Order_ID
2. Product_ID
3. Quantity

### SHIPMENTS
1. Shipment_ID
2. Order_ID
3. Created_at
4. Updated_at


## Authors

* **Dariusz Biskupski** - *Initial work* - https://dariuszbiskupski.com


## Acknowledgments

It is the assignment created for [Viking Code School](https://www.vikingcodeschool.com/)
