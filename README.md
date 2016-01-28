# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*


ONLINE LEARNING PLATFORM

Nouns/Entities
    
Students
    name
    email
    address, etc
    course-join-key

Course
    title
    description
    student-join-key

Lesson
    course-foreignkey
    title
    bodytext

The idea of Course-Lessons as 1-many is that even if the lessons are repeated over courses, the responsibility changes.  Ie, that the responsibility for the lesson in a course is governed by the course even if the material behind it is the same.  There could be other entities which are hypothetically responsible for assigning or maintaining a single lesson across multiple courses but in the prompt we don't know who those entities are.


USER PROFILES

User
    name
    age
    gender
    city
    state
    country    

Profile
    username

Email
    address
    user-key
    profile-key

My first idea is that the Profile represents info that the user presents to others on the site, whereas the User represents the User's actual identity.  I'm not sure about having the email as the link between the User and the Profile.  The upshot of that, it seems, is that the User has the choice of maintaining that link or severing it.  If, as it some case, the site proprietor has a strong interest in "locking" user identity, there could be tighter coupling between them.



MESSAGE BOARD/HACKER NEWS

Article
    title
    text
    author
    link
    timestamp

Comment
    parent-key  will be null for first-order comments
    text
    author
    article-key  validate can't be null
    link
    timestamp

Author
    username
    email
    homepage-link
    text

All comments have an associated article so the article-key field cannot be null.  We can search on all the comments of a user (or some subset) by searching the author field of the comments.


ECOMMERCE/AMAZON

Products
    price
    description
    reviews

Orders
    address
    customer
    billing-info

OrderProducts 
    product_id
    order_id
    quantity


Users
    name


BillingAddress
    user-key
    number
    street
    city
    state
    country
    code


ShippingAddress
    user-key




Shipments
    address
    order_id
    address_id

Order
    user_id
    




