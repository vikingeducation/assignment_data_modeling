# assignment_data_modeling
Mmmmm.... dataaaaa....

Dexter Ford
Jessica Gillan

*Include your ERM modeling "pseudocode" in the space below*

Pseudocode:

1. Tables and Columns:
    Course -  Title (string, min 3 - max 60 chars, present)
              Description (text, min 3 chars, present)

    Lesson - Title (string, min 3 - max 60 chars, present)
             Body (text, min 3 chars, present)
             Foreign key: Course ID (present)

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

            Gender - Name (string, prepopulated)

INTERMEDIATE

1. NOW:
    Table: User - ???

    ADD: Link - Foreign key: User ID (present)
                Link URL (string, REGEX validation, present)
                Image URL (string, REGEX validation, optional)
                Title (string, min: 2, max: 130, present)
         Comment - Foreign key: User ID (present)
                   Foreign key: parent Link ID (optional, maybe present?)
                   Foreign key: parent Comment ID (optional)
                   Body (text, min 2, max 500) (present)

ADVANCED

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

2.  Tables - User(logged in or IP address), Page, Links (Foreign key: Page ID)

    Join table (views) - User ID (optional): Page ID : Time on page (present)
    Join table (clicks) - User ID (optional): Link ID

    Can calculate number of user visits off of views and time views occurred at?
    Or track as user attribute and increment with each new session from same
    IP address?
