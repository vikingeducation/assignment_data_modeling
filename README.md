# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

## Basic
---
### Online learning platform

#### Goals

```
To display the appropriate lesson content for each lesson in a course, for each student.
```

#### Relationships

```
Many Courses can have many Lessons. This is a many:many relationship.

We will use a join table (CourseLesson) with two columns (the primary keys of the Course and Lesson table respectively) per row to model this relationship.
```

#### Entities and Attributes

```
Course
  - course_id (primary key, unique)
  - title (String, unique)
  - description (String)
  - created_at (DateTime)
  - updated_at (DateTime)

Lesson
  - lesson_id (primary key, unique)
  - title (String, unique)
  - body (String)
  - created_at (DateTime)
  - updated_at (DateTime)

CourseLesson
  - course_id (Integer)
  - lesson_id (Integer)
  - created_at (DateTime)
  - updated_at (DateTime)

```


### Profile Page for new User

#### Goals

```
To collect and display demographic information in our Users' profiles.
```

#### Relationships

```
Each City belongs to a State.
Each State has many Cities.
States and Cities have a 1:many relationship.

Each State belongs to a Country.
Each Country has many States.
Countries and States have a 1:many relationship.

Each City is associated with a specific Profile.
Profiles and Cities have a 1:1 relationship (a City "belongs" to a Profile).

Each Profile belongs to a User.
Each User can have many profiles (e.g. one for residential address, one for business address).
Users and Profiles have a 1:many relationship.
```

#### Entities and Attributes
```
User
  - user_id (primary key, unique)
  - username (String, unique)
  - email_address (String, unique)
  - age (Integer)
  - gender (String, max length 6, either Male / Female)
  - created_at (DateTime)
  - updated_at (DateTime)

Profile
  - user_id (foreign key to User table)
  - created_at (DateTime)
  - updated_at (DateTime)

City
  - city_id (primary key, unique)
  - city_name (String)
  - state_id (foreign key to State table)
  - profile_id (foreign key to Profile table)
  - created_at (DateTime)
  - updated_at (DateTime)

State
  - state_id (primary key, unique)
  - state_name (String)
  - country_id (foreign key to Country table)
  - created_at (DateTime)
  - updated_at (DateTime)

Country
  - country_id (primary key, unique)
  - country_name (String, unique)
  - created_at (DateTime)
  - updated_at (DateTime)

```


## Intermediate
---
### Message board like Hacker News

#### Goals
To display user-posted links and comments (on either the links themselves, or comments)

#### Relationships
```
A Link can have many Comments.

A Comment can also have many Comments.

Each Comment can only be associated with either a separate Link or Comment, i.e. each Comment must belong to either a Link, or an existing Comment.
```


#### Entities and Attributes
```
Link
  - link_id (primary key, unique)
  - title (String)
  - url (String)
  - points (Integer)
  - created_at (DateTime)
  - updated_at (DateTime)

Comment
  - comment_id (primary key, unique)
  - author (String / user_id, foreign key to User table)
  - created_at (DateTime)
  - updated_at (DateTime)
  - belongs_to (either link_id or comment_id, must have a means to differentiate link_ids from comment_ids)  
```


## Advanced
---
### E-commerce site (very simplified Amazon.com)

#### Goals
```
To create an e-commerce site to sell all our swag.
```

#### Relationships
```
Users can have many Addresses.
Each Address is tied to a specific User.
Users and Addresses have a 1:many relationship.

Users can have many CreditCards.
Each CreditCard is tied to a specific User.
Users and CreditCards have a 1:many relationship.

Each CreditCard is tied to a billing Address.
CreditCards and Addresses have a 1:1 relationship.

Users can have many Orders.
Each Order is tied to a particular User.
Users and Orders have a 1:many relationship.

Orders can have many Products.
Products can be in many Orders.
Orders and Products have a many:many relationship.

Orders can have many Shipments.
Each Shipment is tied to a specific Order.
Orders and Shipments have a 1:many relationship.

Each Shipment can have one Address.
Each Address can be tied to many Shipments.
Addresses and Shipments have a 1:many relationship.

```

#### Entities and Attributes
```
User
  - user_id (primary key, unique)
  - first_name (String)
  - last_name (String)
  - email_address (String, unique)
  - created_at (DateTime)
  - updated_at (DateTime)

CreditCard
  - creditcard_id (primary key, unique)
  - card_number (String, unique)
  - expiry_date (DateTime)
  - user_id (foreign key to User table)
  - created_at (DateTime)
  - updated_at (DateTime)

Address:
  - address_id (primary key, unique)
  - block_number (String)
  - street_name (String)
  - building (String)
  - city (String)
  - state (String)
  - country (String)
  - phone_number (String)
  - user_id (foreign key to User table)
  - created_at (DateTime)
  - updated_at (DateTime)

Product
  - product_id (primary key, unique)
  - title (String)
  - description (String)
  - price (Integer - amount in cents)
  - created_at (DateTime)
  - updated_at (DateTime)

Order
  - order_id (primary key, unique)
  - user_id (foreign key to User table)
  - created_at (DateTime)
  - updated_at (DateTime)

OrderProduct
  - order_id (foreign key to Order table)
  - product_id (foreign key to Product table)
  - created_at (DateTime)
  - updated_at (DateTime)

Shipment
  - shipment_id (primary key, unique)
  - order_id (foreign key to Order table)
  - address_id (foreign key to Shipment table)
  - created_at (DateTime)
  - updated_at (DateTime)
```

#### Notes
```
Quantity of items in each Order: based on counting the number of rows in the Product / Order join table with the appropriate order_id

Checking where an Order is shipped: query the Address table using the address_id foreign key in the Order table
```
