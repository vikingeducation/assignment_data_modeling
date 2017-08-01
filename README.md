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