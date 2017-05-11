# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Richard Bell

BASIC (1)

Goal: track courses and course content, but not students

course
- course ID (PK)
- title (string)
- description (string)

lesson
- lesson ID (PK)
- title (string)
- body test (string)

M2M table: join lessons to courses (assume lessons can be re-used in different courses)
- lesson ID (FK)
- course ID (FK)

BASIC (2)

user
- user ID (PK)
- username (string: unique)
- email (email address/string - potentially unique depending on business rules)
- city ID (FK)
- state ID (FK)
- country ID (FK)
- birthdate (date)
- gender code (FK)

city
- city ID (PK)
- city name

M2M table: join cities to states (a city could potentially be part of many states)
- city ID (FK)
- state ID (FK)

state (many to one relationship with country)
- state ID (PK)
- state name (string)

country
- country ID (PK)
- country name (string)

gender
- gender code (PK)
- gender type (string)


INTERMEDIATE

odd one since a comment can be tied to a post or another comment as it's "parent"

user
- user ID (PK)
- username (string: unique)

submission
- submission ID (PK)
- author ID (FK to user ID in user table)
- submission content (string)
- submission type (FK)

submission type
- submission type ID (PK)
- submission type description (string - at this point either post or comment)

relationship
- parent ID (FK to PK: submission ID)
- child ID (FK to PK: submission ID)

ADVANCED

products
- product ID (PK)
- product name (string)
- product description (string)
- category ID (FK)
- price (currency)
- quantity (number)

categories
- category ID (PK)
- category description (string)

supplier
- supplier ID (PK)
- supplier name (string)
- supplier street (string)
- supplier city ID (FK)
- supplier state ID (FK)
- supplier postal
- supplier phone (for simplicity assuming one)
- supplier contact ID (FK)
- supplier email

supplier contacts
- supplier contact ID (PK)
- supplier first name (string)
- supplier last name (string)
- supplier email
- supplier phone

products/supplier M2M
- product ID (FK)
- supplier ID (FK)

* for simplicity assuming only one shipping/billing address per user, but otherwise break out
* and have an address table

users
- user ID (PK)
- username (unique)
- password (string/crypt)
- email (string)
- billing street (string)
- billing city ID (FK)
- billing state ID (FK)
- billing postal code
- billing country ID (FK)
- billing phone
- shipping street (string)
- shipping city ID (FK)
- shipping state ID (FK)
- shipping postal code
- shipping country ID (FK)
- shipping phone

city
- city ID (PK)
- city name (string)

state
- state ID (PK)
- state name (string)

city/state M2M
- city ID (FK)
- state ID (FK)

country (1:M from state)
- country ID (PK)
- country name

orders
- order ID (PK)
- customer ID (FK to user ID)
- order date
- payment code (assume using payment processor and getting external payment code so no CC stored)
- payment date

order items
- order item ID (PK)
- order ID (FK)
- product ID (FK)
- quantity (number)

shipments (1:1 with order items)
- shipment ID (PK)
- carrier ID (FK)
- ship date (date)
- delivered (date)

shipment contents (M2M because order items could be split into more than one shipments)
- shipment ID (FK)
- order item ID (FK)

carrier
- carrier ID (PK)
- carrier name (string)
- carrier account number (number)
etc.
