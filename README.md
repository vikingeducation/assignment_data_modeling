Eric and Stephanie

# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

1.
//Goals: A user should be able to identify different courses
  // Specific lessons should be associated with their course
Courses: id, title, description

Lessons: id, title, body, course_id (foreign key)

A course has many lessons, a lesson belongs to one course



2.
//Goals:
//Profile information should be associated with a particular user
//Profile should contain demographic info

Users: id, username, email

Profiles: city, state, country, age, gender, user_id (foreign key)

A user has one profile, a profile belongs to one user




3.
//Goals:
//Users can make posts and comments
//Every comment is associated with a post
//Comments should be able to identify their place in the hierarchy
//Comment can nest indefinitely


Users: id, username

Posts: id, title, body, user_id (foreign key)

Comments: id, body, user_id (foreign key), post_id (foreign_key), parent_comment_id


A user has many posts, a post has one user; a user has many comments, a comment has one user

A post has many comments, a comment has one post

A comment has many comments, a comment has one parent comment?



4.
//Goals:
//We need to be able to determine the address of a shipment
//Need to be able to determine if an order is fulfilled
//Users should be able to track their order/shipment status
//Users should be able to access their order history
//Links to funny cat pictures/memes
//Free Chuck Norris jokes with every order
//Inform a user of out-of-stock products / make sure their payment doesn't go through for it
//Users should be able cancel their orders

Users: id, username, first_name, last_name, street address, city, state, country, zip_code, active

Products: id, name, description, price, num_in_stock

Product/Order Join: order_id, product_id

Orders: id, user_id (foreign key), order_status

Shipments: id, order_id (foreign key), shipping_status

An order has many products, a product has many orders;
A user has many orders, an order has one user;
An order has many shipments, a shipment has one order;

If we do completely delete a user, change user_id in Orders table to dummy user account?


5.
goals:
  //tracking popularity of site features(?)
  //tracking common sources to our site
  //tracking the peak usage times
  //Get data about average session times
  //Track user flow through the site
  //Track how often a particular user comes back to the site (on average)
  //Track the percentage of visitors that become users
  //Track how many pages people typically view in a session


visitors: id
users: id, username, visitor_id (foreign_key)
pages: id, url, category/site-section
page views (attrs): id, page_id (foreign_key), visitor_id (foreign_key), session_id(foreign key), source_url, time  

links: id, page_id(foreign_key), href
link_clicks: id, page_view_id(foreign_key), link_id(foreign_key), time

sessions: id, visitor_id(foreign_key), start_time, end_time

users and visitors one-to-one
visitors have many access-times, access-times hopefully will have many visitors

page views can have many link clicks, link click belong to one page
a visitor has many sessions, a session has one visitor
a session has many page views, a page view has one session






///
