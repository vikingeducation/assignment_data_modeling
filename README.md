# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*


B1)
Goals: track your courses and lessons
Entities: courses, lessons, and authors
Attributes, type and constraints: see below
Relationships: A course has many lessons, in a given order.  A single lesson can be part of multiple courses.

Tables: (include date created and updated columns for each)
Course table with primary key (integer, unique, required), title (short string, unique, required), and description (medium length string, unique, required)

Lesson table with primary key (integer, unique, required), title (short string, unique, required),  text (unlimited length string, required)

CourseLesson join table with Course and Lesson primary keys, and a third column giving the order of this lesson in this course (integer, unique per course, required)

Author table with primary key, first name, last name, email

AuthorLesson join table needing compound key for both author and lesson. 

B2)
Goals: track your data
Entities: Users, Cities, States, Countries, Genders
Attributes, type and constraints: Users have all other entities as attributes, plus profile, firstname, lastname, email, age, and any other demographics collected.  
Relationships: Users have a single profile
Tables: (include date created and updated columns for each)

User table with City, State, Country, and Gender foreign keys plus profile, firstname, lastname, email, age...

City table(1° key and name), with same setup for state, country, and gender tables

I1)
Goals: track data
Entities: users, posts, comments
Attributes, type and constraints: Everything has a date created and updated. Users possibly have posts and comments they've made.  Posts have a single link, title, poster, and 0+ comments.  Comments have a text, votes by users, the post they're related to, as well as a single 'parent' - the post or comment they're directly made about.
Relationships: users make posts and comments, posts have comments, comments have comments, posts, and votes
Tables: (include date created and updated columns for each)

User table with 1° key, name, email, password,

Post table with 1° key (unique between posts and comments), name, link, rating, and poster

Comment table with 1° key (unique between posts and comments), post, parent comment (0 for OP), author, rating

Vote join table with user and post/comment 1° keys and a vote column, +1 or -1

A1) Delete just means hide from the user.  We keep all data forever.

Goals: track all the data
Entities: products, users, orders, order items, shipments, warehouses, countries, cities, states, wishlists, past purchases, reviews
Attributes, type and constraints: everybody gets a 1° key.
Products have name, price, sku, description, picture(s), weights, packing instructions, reviews, ratings
Users have fname, lname, country, city, state, email, password,
Orders have order items
Order Items have products, quantities, shipments they belong to, warehouses they're dispatched from
Warehouses have quantities of products, which are decremented when a new Order Item is created and added to a shipment from that warehouse.  They also have countries, states, cities, and addresses.
Credit Cards have billing addresses and associated users - we want to track who shares them.
Wishlists have users and products
Past purchases have users, products, quantities, prices
Reviews have authors, titles, text, products
Ratings have values, products and raters(users)
Relationships:
Tables: (include date created and updated columns for each)(illustrating each of the above)

wishlist join table with user, product
past purchases join table with user, product, quantity
credit card/user join table with users & credit card ids
credit card table with #s and billing addresses
ratings table
reviews table
Warehouse table with its address
product table
user table
warehouse/product join table
order tables (user, items)
order item tables (destination, order, shipment, product)
shipments (warehouse and user are foreign keys)
shipment/order item join



Goals:
Entities:
Attributes, type and constraints:
Relationships:
Tables: (include date created and updated columns for each)
