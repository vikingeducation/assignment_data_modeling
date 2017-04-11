# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*


1. You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.


### What are the Goals?
1) A student should be able to take a course.
2) A user should be able to view course details (title and desc)
3) A user should be able to view a course's lessons and content

### Entities/Attributes/Types/Constraints

##### Student
-------
id: int, primary_key
first_name: string
last_name: string
email: string, unique index: true


##### Course
-------
id: int, primary_key
title: string
description: text


##### StudentCourses
--------------
id: int, primary_key
student_id: int
course_id: int


##### Lesson
-------
id: int, primary_key
course_id: int
title: string
body: text


##### Relationships
---------------
**Student**
has_and_belongs_to_many :courses [many-to-many]

**Course**
has_many :lessons [one-to-many]
has_and_belongs_to_many :students [many-to-many]

**Lesson**
belongs_to :course [many-to-one]

---------------------------------

2.  You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.

### What are the Goals?
1) A user should be able to have one profile
2) A user should have demographic information associated
3) A profile should know the demographic and user information
4) A user should be able to select State/Country from a prepopulated list

### Entities/Attributes/Types/Constraints

User
-----
id: int, primary_key
username: string
email: string, unique, index


State
-----
id: int, primary_key
name: string


Country
-------
id: int, primary_key
name: string


Profile
-------
id: int, primary_key
city: string
state_id: int
country_id: int
user_id: int
age: int
gender: string


### Relationships

User
has_one :profile [one-to-one]

State
has_many :profiles [one-to-many]

Country
has_many :profiles [one-to-many]

Profile
belongs_to :user [one-to-one]
belongs_to :state [many-to-one]
belongs_to :country [many-to-one]



---------------------------------
3. You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.

### What are the Goals?
1) A user can create a post
2) A user can comment on a post
3) A user can comment on a comment

### Entities/Attributes/Types/Constraints

User
----
id: int, primary_key
email: string, unique, index

Post
----
id: int, primary_key
user_id: int, primary_key
body: text

Comment
-------
id: int, primary_key
commentable_id: int
user_id: int
type: string // [comment, post]


### Relationships
User
has_many :posts [one-to-many]
has_many :comments [one-to-many]


Post
has_many :comments [one-to-many]
belongs_to: user [many-to-one]


Comment
has_many :comments [polymorphic]
belongs_to :post [many-to-one]
belongs_to :user [many-to-one]


4. You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?

### What are the Goals?

1. Customers can sign up with an email address.
2. Signed up customers can place orders on products.
3. Customers can add shipping/billing addresses to their account.
3. Each order will keep track of which and how many products were ordered, and which shipping/billing address to use.
4. If a user deletes their account, the user still exists on the back end, they just can't log in anymore.
5. Orders should track their shipping status.

### Entities/Attributes/Types/Constraints

Users
-----
id: int, primary_key
email: string
billing_address: street
billing_city: string
state_id: foreign key
country_id: foreign key
active: boolean

UserShippingAddresses
---------------------
id: int, primary_key
users_id: foreign key
address: string
city: string
states_id: foreign key
countries_id: foreign key

States
------
id: int, primary_key
name: string

Countries
---------
id: int, primary_key
name: string

Orders
------
id: int, primary_key
users_id: foreign key

Products
--------
id: int, primary_key
name: string
price: decimal

OrderProducts
-------------
id: int, primary_key
orders_id: foreign key
products_id: foreign key
quantity: int

Shipments
---------
id: int, primary_key
users_id: foreign key
orders_id: foreign key
user_shipping_addresses_id: foreign key
type: string // [ground, air]
shipping_cost: decimal

### Relationships

User
----
has_many :orders [one-to-many]
has_many :shipping_addresses [one-to-many]
has_many :shipments [one-to-many]

UserShippingAddress
-------------------
belongs_to :user [many-to-one]

State
-----
has_many :user_shipping_addresses [many-to-one]

Country
-------
has_many :user_shipping_addresses [many-to-one]

Orders
------
has_many :order_products [one-to-many]
belongs_to :user [many-to-one]

Products
--------
has_many :order_products [one-to-many]

OrderProducts
-------------
belongs_to :orders [many-to-one]
belongs_to :products [many-to-one]

Shipments
---------
belongs_to :user [many-to-one]
belongs_to :order [one-to-one]
belongs_to :user_shipping_addresses [one-to-one]



