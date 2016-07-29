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

## 1)E-Commerce
      Goal: Organize ecommerce data in DRY way

      Products: ProductID (PK)  -  Name  -  Description  -  Price  -  Quantity in Stock
                  int           - string -    text       -  float  -  int

      Users:   UserID (PK) -  First name - last name
                  int      -     str     -   str

      Addresses : UserID (FK)  -  AddressID (PK)  - address - city - state - zip
                    int        -    int           - string  - str  - str   - int

      Orders: OrderID (PK)  -  UserID (FK) - order date - AddressID (FK)
                int         -   int   -  date

      Order/Product: ProductID (FK) - OrderID (FK)
                            int     -  int

      Shipments: shipmentId (PK)  -   OrderID (FK)  - delivery date
                    int           -           int   -    date

  Relationships:
      - 1 user has many addresses
      - 1 user has many orders
      - many products have many orders
      - 1 order has many shipments

## 2) Website Analytics
      Goal: Keep track of website analytics in efficient way

      Visitors : VisitorID (PK)  -  city  -  state/region  -   country
                      int        -  str   -     str        -     str

      Pages    :  PageID (PK)

      Pages/Visitors:  PageID (FK)  -  VisitorID (FK)
                          int       -        int

      Links    :  LinkID (PK) - FromPageID (FK)  - ToPageID (FK)
                    int       -     int          -   int

  Relationships:
      - many pages have many visitors
      - 1 page has many links




