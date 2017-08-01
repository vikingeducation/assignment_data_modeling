Eric and Stephanie

# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

1.

Courses: id, title, description

Lessons: id, title, body, course_id (foreign key)

A course has many lessons, a lesson belongs to one course



2.

Users: id, username, email

Profiles: city, state, country, age, gender, user_id (foreign key)

A user has one profile, a profile belongs to one user




3.

Users: id, username

Posts: id, title, body, user_id (foreign key)

Comments: id, body, user_id (foreign key), post_id (foreign_key), parent_comment_id


A user has many posts, a post has one user; a user has many comments, a comment has one user

A post has many comments, a comment has one post

A comment has many comments, a comment has one parent comment?



4.

Users: id, username, street address, city, state, country, zip_code, active

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
visitors
  //unique or not? using cookies
logged-in users   

<!-- unique users: logged-in / not  -->
users: id, username, visitor_id (foreign_key)
visitors: id
pages: id, url, category/site-section,  
page views (attrs): id, page_id (foreign_key), visitor_id (foreign_key), session_id(foreign key), source_url, time  

links: id, click, page_id(foreign_key), href
link_clicks: id, page_view(foreign_key), link_id(foreign_key), time

sessions: id, visitor_id(foreign_key), start_time, end_time

users and visitors one-to-one
visitors have many access-times, access-times hopefully will have many visitors

page views can have many link clicks, link click belong to one page
a visitor has many sessions, a session has one visitor
a session has many page views, a page view has one session






///
