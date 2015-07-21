# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Alice & David!!!

#BASIC
##1
goal: offer course information and lessons
entities: course (has many lessons), lesson
attr & types: course: 1) name = string < 40 char.;
                      2) desc = string < 400 char.

              lesson: 1) title = string < 100 char;
                      2) body = string, no limit
                      3) course ID <- FOREIGN KEY!

relationship: 1 course : many lessons
tables:
Course Table: 1) ID, int
              2) name, string, 1-40 char.
              3) description, string, 1(50)-400 char. <-min ok?
              4) created_at, DateTime
              5) updated_at, DateTime (can add col for subj.)

Lesson Table: 1) ID, int
              2) title, string, 1-100 char.
              3) body = string, >0 char.
              4) created_at, DateTime
              5) updated_at, DateTime
              6) course_id, int

##2
goal: collect demo. info on users
entities: user (only 1 profile!),  location
attr & types: user: 1) username, str < 20 char;
                    2) email, str < 50 char; <- spec. avail?
                    3) age, int < 4 chars
                    4) gender, 1 char
                    5) location

          location: 1) city, string < 30 char
                    2) state, string < 30 chars
                    3) country, string < 30 chars
                    4) zip code, int (optional)

relationship: many users : 1 location
tables:
User Table:   1) ID, int
              2) Username, str 1-20 chars
              3) email, str 5-40 chars
              4) age, int 1-4 chars
              5) gender, char (1)
              6) location ID, int
              7) created_at, DateTime
              8) updated_at, DateTime

Location Table:     1) Location ID, int
                    2) City, string 1-30 char
                    3) state, string 1-30 chars
                    4) country, string 1-30 chars
                    5) zip code, int (optional)
                    6) created_at, DateTime
                    7) updated_at, DateTime

#INTERMEDIATE

Goal: To build a message board where each post can have comments and responses to those comments

Entities: User, Posts, Comments

Attributes & Types:

    Users:      1) Username
                2) Email

    Posts:      1) Title
                2) Link to article
                3) Comments

    Comments:   1) Author (user)
                2) Time of comment
                3) Body
                4) Parent Post ID
                5) Parent Comment ID

Relationships:
      1) Users -> Posts         - 1 User : Many Posts
      2) Users -> Comments      - 1 User : Many Comments
      3) Posts -> Comments      - 1 Post : Many Comments
      4) Comments -> Comments   - 1 Comment : Many Comments

Tables:

    User Table:         1) Username, string 1-30 chars (Primary Key)
                        2) Email, string 5-40 chars
                        3) created_at, DateTime
                        4) updated_at, DateTime

    Post Table:         1) Post ID, int (Primary Key)
                        2) Title, string 1-50 chars
                        3) Link to article, string <500 chars
                        4) Username, string (Foreign Key)
                        5) created_at, DateTime
                        6) updated_at, DateTime

    Comment Table:      1) Author, string 1-30 char(user foreign key)
                        2) created_at, DateTime
                        3) updated_at, DateTime
                        4) body, string  < 1000 chars
                        5) Post ID (foreign key)
                        6) Parent Comment ID (foreign key) (optional)
                        7) Comment ID (primary key) OR 4 combo ID's?

#ADVANCED
##1)
goal:   keep track of products, users, orders, shipments and how
        they link to each other
entities: user, product, order, shipment, Credit Card, Address

attributes & types:
    User: 1) Username
          2) Email
          3) Credit Card #

    User : Address: 1) user
                    2) address

    Address:  1) city, string < 30 char
              2) state, string < 30 chars
              3) country, string < 30 chars
              4) zip code, int (optional)
              5) Building #
              6) street name
              7) apt #

    Credit Cards: 1) credit card #
                  2) name on card
                  3) exp. date
                  4) CID
                  5) type of card
                  6) address

    User: Credit Card:  1) user
                        2) Credit Card
                        3) Order #

    Product:  1) name
              2) description
              3) price
              4) amount in stock
              5) Product ID

    Order:  1) Order #
            2) address

    Order products    1) Order #
                      2) Product ID
                      3) Quantity of Product in the order

    Shipping: 1) order #
              2) pack date
              3) ship date
              4) arrival date

Relationships:
    User -> Address - One Users : Many Adresses
                      One Adress : Many Users

    Credit Card -> Adress - Many Credit Card : One Billing Address

    User -> Credit Card - One user : Many Credit Cards
                          One Credit Card : Many users

    Product -> Order - One Product : Many Orders
                        One Order : Many Products

    Shipping -> Order - 1 Order : 1 Shipments

    Order -> Address -  1 Order : 1 Address
                        1 Address : Many Orders

    Order -> User - 1 Order : 1 User
                    1 User : Many Orders

    Order -> CC# - 1 Order : 1 Credit Card


Tables:
    User: 1) Username, string, 1-40 char (PK)
          2) Email, string, 5-40 char

        User : Address: 1) username, string (FK)
                        2) address ID, int, (FK)

    Address:  1) city, string < 30 char
              2) state, string < 30 chars
              3) country, string < 30 chars
              4) zip code, int (optional)
              5) Building #, int (optional)
              6) street name, string < 50 chars
              7) apt #, string < 5 char
              8) Address ID, int (PK)

  Credit Cards: 1) credit card #, int (PK)
                2) name on card, string < 50 char
                3) exp. date, date(MM/YY)
                4) CID, int, 3-4 digits
                5) type of card, string, 2 char
                6) address ID, int (FK)

      User: Credit Card:  1) username, string (FK)
                          2) Credit Card # (FK)

    Product:  1) name, string 1-50 char
              2) description, string, 500 char
              3) price, float
              4) amount in stock, int >= 0
              5) Product ID, int (PK)

    Order:  1) Order #, int (PK)
            2) CC #, int (FK)
            3) Username, string (FK)
            4) address ID, int (FK)

    Order products    1) Order #, int (FK)
                      2) Product ID, int (FK)
                      3) Quantity of Product in the order, int > 0

    Shipping: 1) order #, int (FK)
              2) pack date, datetime
              3) ship date, datetime
              4) arrival date, datetime

##2)



