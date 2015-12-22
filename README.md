# assignment_data_modeling
Mmmmm.... dataaaaa....

by Sia Karamalegos

*Include your ERM modeling "pseudocode" in the space below*

*Note*: id, created_at, and updated_at fields of the current table are implied

1. Courses and Lessons

Courses (has many Lessons)
title: string
description: string

Lessons (belongs to Course)
title: string
body: text
course_id

2. Users and Profiles

User (has one Profile)
username: string
email: string

Profile (belongs to User)
dob: date (use to calculate age in model)
user_id
gender_id or use constants in model
city: string
state_id
country_id

Gender
gender: string

State
state_code: string
state_name: string

Country
country_code: string
country_name: string

3. HackerNews

User (has many links and comments)
username: string
email: string
etc.

Links (belongs to user, has many CommentConnections)
link: string
author_id (user_id)

Comments (belongs to user, has many CommentConnections)
text: text
author_id (user_id)

CommentConnections (belongs to Comment, belongs to Link)
(this probably isn't right)
comment_id
parent_type (link or comment)
parent_id (id of link or comment that the comment was referring to)

4. E-commerce site

Product
name: string
description: text or maybe string
current_price: decimal
current_quantity: integer, > 0
etc (categories, brands)

User (has many orders, has many shipping addresses)
username, email, role, etc

Line Items (belongs to order, belongs to cart)
product_id
quantity: integer
price: decimal
cart_id
order_id

Cart (probably using sessions)

Order
user_id
shipping_address_id
status
payment stuff - hopefully done through something like Stripe so need stripe payment id and status

Shipping Addresses (belongs to User)
all those address-y things which are multiple tables

5. Analytics

User
user stuff

Visit (has many clicks and useful things done)
page
start time
end time
traffic source
user_id
client type
when exited (though maybe derived from other related tables)

Click (belongs to visit)
item_clicked
visit_id

Useful Things Done (like ordering something)
order_id
visit_id
