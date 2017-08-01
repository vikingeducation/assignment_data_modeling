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
Entities: products, users, orders, order items, shipments, warehouses, countries, cities, states, zip codes, wishlists, addresses, reviews, credit cards
Attributes, type and constraints: everybody gets a 1° key.
Products have name, price, sku, description, picture(s), weights, packing instructions, reviews, ratings, color (may be blank?), size (may be blank?)
Users have username, fname, lname, email, password,
Orders have a user
Order Items have products, quantities, order, price
Warehouses have addresses.
Credit Cards have billing addresses (street), foreign key from country/state/city/zip, number, exp, security code.
Wishlists have users 
Reviews have authors, titles, text, products
Ratings have values, products and raters(users)
Shipments have origin, destination, & method
Relationships:
Tables: (include date created and updated columns for each)(illustrating each of the above)

users - username, email, fname, lname, password

address table with foreign keys from country, state, city, zip, plus a street address

country table

state table

city table

zip code table

User/address join table

Orders table with user,

Order item table with order (one to many), product (ditto), quantity, price (for purchase history)

Shipments table with origin (warehouse), destination (warehouse or user address), & method

Join table with shipments and Orders

join table with shipments and order items

warehouse table with address

join table with warehouse and product with a third column for quantity at location

product table with primary key, sku, name, description, weight, packing instructions, price, color (may be blank?), size (may be blank?)

review table with primary key, product, user, text

credit card table primary key, number, expiration date, security code, address table references, and address

join table for users and credit card

wish list table with primary key and user

Product/Wishlist join table

ratings table with product, rater(user), and rating


Optional)

Goals: track all data

Entities: pages, users, IP Addresses of visitors, individual visit sessions, link clicks/MIME requests

Attributes, type and constraints:

Page - url, 

user - username, pw, fn, ln

IP Addy - value

Sessions - begin, end, IPA, user (0 if unknown), device info

Link clicks - session, time on page, origin, destination

Relationships:

Tables: (include date created and updated columns for each)

One for each entity above plus...

Join users and IPA
