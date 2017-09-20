# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Basic 1.
Display all courses with title and description
Display all lesson for each course with title and body text

one  ---  many
course - lessons

course
  id - INT
  title - VARCHAR(255) - required
  instructor - VARCHAR(255)
  description - TEXT

lesson
  id - INT
  course_id - INT - required
  title - VARCHAR(255) - required
  body text - TEXT

Basic 2.

add profile page to the user with demographic info
demographic info will be stored separately

user
profile
state
city
country

state
  id - INT
  name - VARCHAR(2) - required

city
  id - INT
  name - VARCHAR(255) - required

country
  id - INT
  name - VARCHAR(255) - required

user
  id - INT
  username - VARCHAR(255) - required unique
  email - VARCHAR(255) - required unique

profile
  id - INT
  user_id - INT
  city_id - INT
  state_id - INT
  country_id INT
  age - INT
  gender - VARCHAR(6)


Intermediate 1.

Build a message board that allows posts to have comments
and for comments to have comments
where each post has an author and each comment has an author

user
post
comment
type

user
  id - INT
  username - VARCHAR(255) - required unique
  email - VARCHAR(255) - required unique

post

  id - INT
  user_id - INT
  body - TEXT

comment
  id - INT
  type_id - INT
  parent_id - INT


type
  id - INT
  name comment-reply or post-reply
  user_id - INT
  body - TEXT

type
  id - INT
  name - comment-reply or post-reply

Advanced 1.

To have a list of products, users, orders, shipments, and see which user made an order, which products were in the order. Each order can be broken up in many shipments, and one shipment might contain many orders.

product
user
order
shipment
category

product
  id - INT
  price - Number
  name - VARCHAR(255)
  description - TEXT
  category_id - INT

category
  id - INT
  name - VARCHAR(255)

user
  id - INT
  fname - VARCHAR(255)
  lname - VARCHAR(255)
  email - VARCHAR(255) - unique
  address - VARCHAR(255)
  state_id - INT
  city_id - INT
  country_id - INT
  zip_id - INT
  active - boolean

state
  id - INT
  name - VARCHAR(2) - required

city
  id - INT
  name - VARCHAR(255) - required

country
  id - INT
  name - VARCHAR(255) - required

zip
  id - INT
  name - INT

order
  id - INT
  user_id - INT

shipment
  id - INT
  user_id - INT

join order-product
  order_id - INT
  product_id - INT
  productQuantity - INT

join product-shipment
  product_id
  shipment_id
  productQuantity - INT

join order-shipment
  order_id
  shipment_id


Optional 2.

track user and visitor activity on the website
all visitor activity will be tracked under user_id 1

user
pages
links

user
  id
  total time site
  total clicks

pages
  id
  name
  body

join user-pages
  user_id
  page_id
  number_of_visits

