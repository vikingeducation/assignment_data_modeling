# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Joe Bernardi

1. Online Learning Platform
	- online students only
	- no log-in required
	- many courses
		- title
		- description
			- multiple lessons
				- title
				- body text

	a. System goals and data needs
		- display the courses by title and description
		- each user can see their course
			- current lesson, title
	b. Entities
		- courses
		- lessons
	c. Attributes
		- courses
			- title
				- string - 4-12 Chars long, required, unique
			- description
				- text - 10-40 chars long, required
		- lessons
			- title
				- 4-12 chars long, required
			- body
				- text, no limit
	d. Relationships
		- One course can have many lessons
		- One lesson can have many courses
			- ie. many lessons on Ruby
	e. Tables
		- Course
			- "id", integer
			- "title", string, 4-12, unique, required
			- "description", text, 10-40
			- "created_at", DateTime
			- "updated_at", DateTime
		- Lesson
			- "id", integer
			- "title", string, 4-12
			- "CourseID", integer
			- "body", text, no limit
			- "created_at", DateTime
			- "updated_at", DateTime
		- Join Table
			- "CourseID", integer
			- "LessonID", integer
			- "updated_at", DateTime
			- "created_at", DateTime
	f. Normalize
		- each lesson and course has specific title and description or body associated with it
		- one course will have many lessons and one lesson will be able to link to multiple course subjects
		- Lessons will be dependant on the course

1. Profile Page for new Users
	- have username
	- have email
	- adding...
		- City
		- State
		- Country
		- Age
		- Gender
	a. System goals and data needs
		- a user should have ONE profile page
		- A user has a username and email
		- A profile has demographic info
	b. Entities
		- User
		- Profile
	c. Attributes
		- User
			- first_name, string, 4-20 chars
			- last_name, string, 4-20 chars
			- email, string, unique, 4-20 chars
		- profile
			- City, string
			- State, string, 2 chars, unique
			- Zip, integer, 6 chars
			- Country, string, unique
			- Age, int, 1-3 chars
			- Gender, string, 1 char (M/F)
	d. Relationships
		- One user has one profile
	e. Tables
		- User
			- "id", integer
			- "first_name", string, 4-12, required
			- "last_name", string, 10-40
			- "created_at", DateTime
			- "updated_at", DateTime
		- Profile
			- "id", integer
			- "UserId", int
			- "City", string, 4-12
			- "State", string, 2 chars, unique
			- "Zip", int, 6 chars
			- "Country", string, unique
			- "Age", int, 1-3 chars
			- "Gender", string, 1 char
			- "created_at", DateTime
			- "updated_at", DateTime

	f. Normalize
		- each user profile only has reference the the user and user only has reference the user profile


1. Message Board
	- users can post links
	- other users can comment on an authors posts
	- users can comment on comments


	a. System goals and data needs
		- display a users post so others can see it
		- each post can be viewed by a user
			- they can comment on the post
		- each comment another user posts can also be commented on
	b. Entities
		- users
		- posts
		- post comments
		- nested comments
	c. Attributes
		- User
			- name (first/last)
			- email
		- Post
			- title
			- body
		- Comment
			- title
			- body
	d. Relationships
		- User can have many posts
		- Post can have many comments
		- a comment can have many comments
		- User can have many comments
		- User can post comment
		- Post can have many authors
	e. Tables
		- User
			- "id", int, unique
			- "first name", string, 4-12
			- "last name", string, 4-12
			- "email", string, 10-20
		- Post
			- "id", integer
			- "title", string, 4-12
			- "AuthorID", integer
			- "body", text, no limit
			- "created_at", DateTime
			- "updated_at", DateTime
		- Comment
			- "UserID", integer
			- "PostID", integer
			- "updated_at", DateTime
			- "created_at", DateTime
	f. Normalize
		- User table holds only user info
		- Post table has the post with reference to the user
		- the comments have reference to the user who posted and the post it refers to

1. E-Commerce Site
	- track products
	- track users
	- track orders
	- track shipments

	- handling qty
	- knowing where an order shipped
	- deleted user accounts

	a. System goals and data needs
		- display the user and their orders
			- show what ordered
			- quantity
			- date ordered
			- ship date
			- delivery date
		- track pertinent info
			- orders
			- products
			- shipments
	b. Entities
		- Users
		- products
		- User Profile
		- orders
		- shipments
	c. Attributes
		- User
			- user_name
			- email
			- created_at
			- updated_at
		- profile
			- shipping_address
			- user_id
		- products
			- item
			- desription
			- created_at
			- updated_at
		- orders
			- userID
			- qty
			- address
				- city
				- state
				- zip
			- create_at
			- updated_at
		- shipments
			- orderID
			- ship_date
			- created_at
			- updated_at
	d. Relationships
		- Product can be selected by many users
		- shipping address can have many users
		- user can have many orders
		- order can have many users
		- shipments have many orders
		- order can have multiple shipments
		- user has one profile
	e. Tables
		- User
			- user_name - string, 4-12
			- email - string, 4-20, unique
			- created_at - DateTime
			- updated_at - DateTime
		- profile
			- shipping_address,string
			- user_id, int
		- products
			- item, unique, 4-12, string
			- desription, text, 10-30
			- created_at
			- updated_at
		- orders
			- userID, int
			- qty, int
			- address
				- city, string, 4-20
				- state, string, 2, unique
				- zip, int, 6, unique
			- create_at
			- updated_at
		- shipments
			- orderID, int, unique
			- ship_date, DateTime
			- created_at
			- updated_at
	f. Normalize
		- userID linked to profile, orders
		- join table links order to user and shipment
		- products and orders separate
		- shipments reference order