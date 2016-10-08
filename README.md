# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Tamal Riedman

Basic
1.  One-to-many
    Course
      Course ID (Primary key)
      Title
      Description
    Lesson
      Course ID (Foreign Key)
      Lesson ID (Primary Key)
      Title
      Body
2.  One-to-many
    User
      username (Primary Key)
      email
      profile ID (Foreign Key)
    Profile
      Profile ID(Primary Key)
      city
      state
      country
      age

Intermediate
1.  Many-to-many
    User
      user ID (Primary Key)
      username
      email
    Post
      Post ID (Primary Key)
      Title
      Body
      User ID (Foreign Key)
    Comment
      Comment ID (Primary ID)
      Body
      User ID (Foreign Key)
      Post ID (Foreign Key)

Advanced
1.  Many-to-many
    User
      User ID (Primary Key)
      email
    Profile
      Profile ID(Primary Key)
      User ID (Foreign Key)
      city
      state
      zip
      country
      age
    Product
      Product ID (Primary Key)
      product name
      product description
      price
      number in stock
    Order
      Order ID (Primary Key)
      Product ID (Foreign Key)
      order date
      ship date
      delivery date
