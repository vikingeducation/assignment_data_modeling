# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

1. Basic -- Online Learning Platform

  Goals: Display a list of courses and the list of lessons for each course.

  Entities: Courses, lessons

  Attributes: Courses: Title, Description.
              Lessons: Title, Body Text

  Relationships: Each course has many lessons, but each lesson only belongs to one course.  One-to-many relationship.

  Tables: Course Table:
            "course_id", integer
            "title", string
            "description", string

          Lessons Table:
            "lesson_id", integer
            "title", string
            "body_text", string
            "course_id", integer

2. Basic -- Profile Page

  Goals: To collect new demographic information for each user.

  Entities: Users (existing), Profile

  Attributes: Users: First name, last Name, username, email
  Profiles: City, State, Country, Age, Gender

  Relationships: Each user has one profile, one-to-one

  Tables: User Table:
            "user_id", integer
            "first_name", string
            "last_name", string
            "username", string
            "email", string

          Profiles Table:
              "user_id", integer
              "city", string
              "state", string
              "country", string
              "age", integer
              "gender", string

  3. Intermediate -- Message Board

    Goals: Provide a list of posts with comments, and users         

    Entities: Users, Posts, comments

    Attributes: Users: username, email
                Posts: title, text, author
                Comments: text, author, comments, parent comment

    Relationships: A user can have multiple posts and multiple comments (one-to-many).  A post can have one author (many-to-one) and multiple comments (one-to-many).  A comment can have one author and one post (many-to-one) and multiple other comments (many-to-many).    

    Tables: Users Table:
              "user_id", integer
              "username", string
              "email", string

            Posts Table:
              "post_id", integer
              "title", string
              "text", string
              "author_id", integer

            Comments Table:  
              "comment_id", integer
              "text", string
              "author_id", integer

            Comment Join Table:
              "parent_id", integer
              "child_id", integer

  4. Advanced -- E-commerce

    Goals: Keep track of orders, users, shipments, etc.

    Entities: Users, Products, Orders, Shipments

    Attributes: Users: Fist Name, Last Name, email
                Products: Name, Description, Price
                Orders: User, Address, Order Items

    Relationships: Users have many orders.  Orders have many products but only one shipment.

    Tables: Users Table:
              "user_id", integer
              "first_name", string
              "last_name", string
              "email", string

            Products Table:
              "product_id", integer
              "name", string
              "description", string

            Orders Table:
              "order_id", integer
              "delivery_street", string
              "delivery_city", string
              "delivery_state", string
              "delivery_zip", integer

            Orders Product Join Table
              "order_id", integer
              "product_id", integer

            Customer Orders Join Table:
              "user_id", integer
              "order_id", integer
              "date_placed", datetime
              "shipement status", string
