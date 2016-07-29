Jess

CJ

# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*


1. Online learning platform
  - Goals
      - allows users to choose courses
        - view title, description and lessons
      - allows users to view lessons
        - users can view title and body

  - Entities
    - Course
    - Lesson
    - CourseLessons (join table)

  - Attributes, types, constraints
   - Course
      - Title : string, unique?
      - description : text

    - Lesson
      - title: string
      - body: text

    - CourseLessons
      - course id
      - lesson id

  - Relationship
   - many-to-many
   - courselessons belongs to course
   - course lessons belongs to lesson

2. Profile Page 
  - goals
    - obtain data about users

  - Entities
    - user (username, email, dob, city, state, country, gender)
    - city (city)
    - state (state, inc n/a)
    - country (country)
    - gender (gender)

  - Relationship
    - one-to-many for user to address attributes (each attribute would belong to many users).

3. Message board
  - goals
    - allow users to post links
    - allow users to make a comment to a link
    - allow users to reply to a comment

  - Entities
    - Link
    - User
    - Comment
    - Reply

  - Attributes
    - Link
      - Title
      - Body
      - user_id
    - User
      - Name
      - Login credentials
    - Comment
      - body
      - link_id
      - user_id
    - Reply
      - body
      - comment_id
      - user_id
  
  - Relationship
    - A User has many Links. A Link belongs to a User.
    - A Link has many Comments. A Comment belongs to a Link.
    - A User has many Comments. A Comment belongs to a User.
    - A User has many Replies. A Reply belongs to a User.
    - A Comment has many Replies. A Reply belongs to a Comment.

4. E-commerce website
  - goals
    - keep track of: 
      - products, 
      - users,
      - orders, 
      - shipments,
      - address
  - Entities
    - User
    - Order
    - Product
    - Address
    - Shipment
    - Warehouse
  - Attributes
    - User
      - login credentials (deactivate only)
      - (keep id;
         trace order back to user for auditing purposes)
    - Order
      - (keep data; needed for auditing purposes)
      - user_id
      - shipment_id
    - Product
      - name
      - price
      - product_code
    - OrderProduct
      - order_id
      - product_id
    - Shipment
      - address_id
      - warehouse_id
    - Address
    - UserAddress
      - user_id
      - address_id
    - Warehouse
      - quantity
    - ProductWarehouse
      - product_id
      - warehouse_id
  - Relationship
    - User has many Orders. An Order belongs to a User.
    - An Order belongs to a Shipment. A Shipment has many Orders.
    - A Shipment belongs to a Warehouse. A Warehouse has many Shipments.
    - OrderProduct belongs to an order. OrderProduct belongs to a Product.
    - An Address has many shipments. A Shipment belongs to an Address.
    - UserAddress belongs to a User. UserAddress belongs to an Address.
    - ProductWarehouse belongs to a Product. ProductWarehouse belongs to a Warehouse.

[OPTIONAL]
- goals
  - track visitors and track logged-in users
    - track page views
    - track link clicks
    - track time on page
- Entities
  - User
  - URL
  - Request
    - url_id
    - ip_address
    - session_cookie
  - Page
    - views
  - Link
  - Click
    - link_id
  - PageLinks
    - page_id
    - link_id
  - TimeSpent
    - datetime
- Relationships
  - URL has many Requests. A Request belongs to a URL.
  - A Link has many Clicks. A Click belongs to a Link.