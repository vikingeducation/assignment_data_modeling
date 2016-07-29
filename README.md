# assignment_data_modeling
Mmmmm.... dataaaaa....

Hannah Squier & Chris Goodson

## 1) Free Online Learning Platform
  Goal: Arrange Dataset so info is easily accessible

  Entities and Attributes:
    1) Student: First name, last name, student id (primary key),
    2) Course: course id (primary key), title, description,
    3) Student/Course join table: student id (foreign key), course id (foreign key)
    4) Lessons: course id (foreign key), lesson id (primary key), description

  Relationships:
    1) Student/Course: many-to-many
    2) Course/Lesson: 1-to-many. Lesson belongs to course

## 2) Profile Page
  Goal: Collect demographic information for user already stored in DB

  Entities and Attributes:
    1) User: username - user ID - email  - city ID - gender
              string  -  int  -  string  -  int    -  string

       city: Name -  City ID - State ID 
             string - int  - int

      state: Name - state ID (1 to many with City)      

  Relationships:
        User has one city
        State has many cities


#### Intermediate 

## 1a) model

        Posts/ users/ comments / comment-comments

        User : UserID - UserName -  
               int    - string   - 

        Posts: PostID - UserID(author) - body - title 
                int   -  int           - text - string

     Comments: UserID - CommentID  - PostID - ParentID - body
                int   -    int     -  int   -   int    -  text



##1b) relationships
        
        User : has many posts( 1 to many )
        User : has many comments( 1 to many )
        Post : has many comments( 1 to many ) 
     Comment : has many comments( 1 to many )


#### Advanced

## 1)

      Products


You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?