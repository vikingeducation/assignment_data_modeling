# assignment_data_modeling
Mmmmm.... dataaaaa....

Dexter Ford
Jessica Gillan

*Include your ERM modeling "pseudocode" in the space below*

Pseudocode:

You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.

1. Tables and Columns:
    Course -  Title (string, min 3 - max 60 chars, present)
              Description (text, min 3 chars, present)

    Lesson - Title (string, min 3 - max 60 chars, present)
             Body (text, min 3 chars, present)
             Foreign key: Course ID (present)

 You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.

2. NOW:
    Table: User - Username  
                  Email

  ADD:
    Tables: Profile - Foreign key: User ID (present)
                      Foreign key: City ID (present)
                      Foreign key: Gender ID (optional)
                      Age (Integer, min 5 - max 120, present)

            City - Foreign key: State ID (optional)
                   Foreign key: Country ID (present)
                   Name (string, min 2 - max 100, present)

            State - Foreign key: Country ID (present)
                    Postal_abbr (string, length == 2, present )

            Country - Name (string, min 2 - max 100, present)

            Gender - Name (string, pre-populated)

INTERMEDIATE

You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.

1. NOW:
    Table: User -    --

    ADD: Link - Foreign key: User ID (present)
                Link URL (string, REGEX validation, present)
                Image URL (string, REGEX validation, optional)
                Title (string, min: 2, max: 130, present)
         Comment - Foreign key: User ID (present)
                   Composite Foreign key: parent table name (string, present) (link or comment)
                   Composite Foreign key: parent ID (integer, present)

                   ** Really want one parent id column:
                   Composite Foreign key - comprised of multiple Values,
                   string (name), number (ID)

                   Body (text, min 2, max 500) (present)

ADVANCED
You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?

1. Product - Name (string, min-max, present)
             Description (text, min-max)
             cost (Float, min = 0, 2 decimal precision, present)
             image (string, REGEX validation for URL/path to img)

   User - First name (string, min-max, present)
          Last name (string, min-max, present)
          email (string, REGEX validation, unique, present)
          password (string, min-max, hashed)
          Credit card number (Assumed you have to register CC) (Integer, BigNum?, length, present)
          credit card PIN (Integer, length, present)
          Street address (string, REGEX validation, present)
          City (string, min-max length , present)
          zip code (integer, present, length)
          Foreign key: State (optional if not US)
          Foreign key: Country (present)
          Active (bool, delete cc, password, address if inactive)

   Order -  Foreign key: User ID (present)
            Alt. Address (optional) -  Street address (string, REGEX validation, present)
                                       City (string, min-max length , present)
                                       zip code (integer, present, length)
                                       Foreign key: State (optional if not US)
                                       Foreign key: Country (present)

  Shipments - Foreign key: Order ID (present)
              Foreign key: Vendor ID (present)
              Tracking ID (string, length, optional)

  Join Table - Combined Key: Product ID (present)      
               Combined Key: Shipment ID (present)
               Quantity of Product (integer, min)

  User:Order - 1 to Many
  Order:Shipment - 1 to Many
  Product:Shipments - Many to Many

(Optional) You want to collect analytics data for visitors and logged-in-users who are visiting your website. This includes basic information like page views and more advanced things like link clicks and time on page. You ideally want to tie this information back to a given user if possible. Design the data model for this analytics infrastructure. You'll have to use your judgement about what additional attributes would be interesting to track

2.  Tables - User(logged in or IP address), Page, Links (Foreign key: Page ID)

    Join table (views) - User ID (optional): Page ID : Time on page (present)
    Join table (clicks) - User ID (optional): Link ID

    Can calculate number of user visits off of views and time views occurred at?
    Or track as user attribute and increment with each new session from same
    IP address?
