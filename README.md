# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Name: Christian Florez

## Basic
### Online Learning Platform
1. Goals: We need to display a list of courses, along with the related lessons for each course whenever a user clicks through.
2. Entities: Mainly courses and lessons.
3. Attributes & Types:
  - **Courses**
    - "id": integer
    - "title": string (25 char max)
    - "description": text (200 char max)
  - **Lessons**
    - "id": integer
    - "course-id": foreign key, primary key from courses
    - "title": string (25 char max)
    - "body": text (no limit)


### Profile Page
1. Goals: We need to allow users to enter as much demographic information as they would like and store that in a granular fashion on our db.
2. Entities: User, City, State, Country, Gender
3. Attributes & Types:
  - **User**
    - "id": integer
    - "username": string (18 char max)
    - "email": string (50 char max)
    - "cityID": integer
    - "age": integer (1 byte)
    - "genderID": integer
  - **City**
    - "id": integer
    - "city name": string (58 char max)
    - "stateID": integer
  - **State**
    - "id": integer
    - "state name": string (58 char max)
    - "countryID": integer
  - **Country**
    - "id": integer
    - "country name": string (50 char max)
  - **Gender**
    - "id": integer
    - "gender name": string (30 char max)

## Intermediate
### Message Board
1. Goals: A message board where users can post links and other uses can comment in a nested fashion to respond to the link
2. Entities: Users, Submissions, Comments
3. Attributes & Types:
  - **User**
    - "id": integer
    - "username": string (18 char max)
    - "email": string (50 char max)
  - **Submissions**
    - "id": integer
    - "linkURL": string (256 char max)
    - "title" string (25 char max)
  - **Comments**
    - "id" integer
    - "submissionsID": integer
    - "usernameID": integer
    - "parentID": null or integer (relates to primary key in this table)
    - "hasChildren": boolean
    - "body": text (no limit)

## Advanced
### E-commerce site
1. Goals: A full fledged site where user can order products and track shipments
2. Entities: Users, Shipping Address, Billing Address, City, State, Country, Products, Orders, ProductOrdersJoin, Shipments
3. Attributes & Types:
  - **User**
    - "id": integer
    - "username": string (18 char max)
    - "email": string (50 char max)
    - "streetAddressID": integer
    - "isActive": boolean
  - **Street Address**
    - "id": integer
    - "street address": text (50 char max):
    - "cityID": integer
  - **City**
    - "id": integer
    - "city name": string (58 char max)
    - "stateID": integer
  - **State**
    - "id": integer
    - "state name": string (58 char max)
    - "countryID": integer
  - **Country**
    - "id": integer
    - "country name": string (50 char max)
  - **Products**
    - "id": integer
    - "name": string (50 char max)
    - "description": text (no limit)
    - "price": number
  - **Orders**
    - "id": integer
    - "shippingAddressID": integer (foreign key of Street Address table)
    - "billingAddressID": integer (also foreign key of Street Address table)
  - **ProductOrderJoin**
    - "orderID": integer
    - "quantity": integer
    - "productID": integer
    - "orderDate": datetime
  - **Shipments**
    - "id": integer
    - "orderID": integer
    - "shipmentDate": dateTime

### Analytics
1. Goals: To keep track of how a user interacts with a page by measuring page views, link clicks, and time on page
2. Entities: Users, Pages, Page Views, Link Clicks, Time on Page
  - **User**
    - "id": integer
    - "username": string (18 char max)
    - "email": string (50 char max)
  - **Pages**
    - "id": integer
    - "url": string (128 char max)
  - **PageViewsUserJoin**
    - "userID": integer
    - "viewCount": integer
    - "pageId": integer
  - ** Links **
    - "id": integer
    - "url": string (128 char max)
  - ** LinksUserClicksJoin **
    - "userID": integer
    - "clickCount": integer
    - "linkID": integer
  - ** TimeOnPage **
    - "id": integer
    - "userID": integer
    - "pageID": integer
    - "timeOnPage": datetime
