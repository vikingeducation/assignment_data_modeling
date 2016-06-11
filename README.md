Assignment Completed by [Stephen Mayeux](http://stephenmayeux.com)

# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

## Basic

1. Learning Platform -- One-to-Many relationship. One course can have many lessons, but a lesson belongs to only one course.

### Possible entities

a. Course Model
  - course id
  - title, required, minimum 5 characters
  - description, required, minimum 140 characters
  - lessons, required, minimum 1 lesson

b. Lesson Model
  - course id
  - lesson id
  - title, required, minimum 5 characters
  - description, required, minimum 70 characters


2. User Profile -- A series of One-to-Many relationships.

### Possible entities

a. User Model
  - user id
  - username, required, must be unique
  - password, required
  - email, required, must be unique, must be valid email format
  - city id
  - State id
  - Country id
  - Age, must be at least 13,
  - gender

b. City Model
  - city id
  - city name
  - state id

c. State Model
  - state id
  - state name
  - country id  

d. Country Model
  - country id
  - country name

## Intermediate

1. Hacker News Message Board -- Another series of One-to-Many relationships

### Possible entities

a. User Model
  - user id
  - username, required
  - password, required, encrypted

b. Links Model
  - link id
  - link title, required,
  - link url, must be valid url
  - user id

c. Comments
  - comment id
  - comment body, required
  - user id
  - link id
  - link parent, default to nil
  - link children, stored in array

## Advanced

1. Online Store

## Possible entities -- One-to-Many and Many-to-Many relationships

a. Product Model
  - product id
  - product title, required
  - product description, required, 25 characters minimum

b. User Model
  - user id
  - username
  - password, must be encrypted

c. Order Model
  - order id
  - user id
  - shipment id 

d. ProductOrder
  - product id
  - order id

e. Shipment
  - address
  - user id
