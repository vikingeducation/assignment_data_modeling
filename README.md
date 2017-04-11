# assignment_data_modeling
Dave Hail
Deven Bhatt

*Include your ERM modeling "pseudocode" in the space below*

BASIC

1. Online Learning
  One-to-many relationship  

  COURSES
    courseID: INT
    title: VARCHAR(100), required
    description: TEXT

  LESSONS
    lessonID: INT
    title: VARCHAR(100), required
    body: TEXT
    courseID: INT

2. Profile Page for a new User
  One-to-One relationship

  USER
    userID : INT
    email : VARCHAR (60), required
    username : VARCHAR (20), required
    password: VARCHAR (20), required

  PROFILE
    profileID : INT
    city : VARCHAR (20)
    state : VARCHAR (20)
    zip : INT
    country : VARCHAR (20)
    age : SMALLINT
    gender : VARCHAR (3)
    userID : INT

INTERMEDIATE

1. Hacker News Message Board
 One-to-many relationship

  USER
    userID : INT
    email : VARCHAR (60), required
    username : VARCHAR (20), required
    password: VARCHAR (20), required
    about : TEXT

  LINK
    linkID : INT
    title : VARCHAR (100), required
    url : VARCHAR (100), required
    userID : INT

  COMMENT
    commentID : INT
    comment : TEXT, required
    userID : INT
    linkID : INT
    parentID : INT, default(0)

ADVANCED

1. E-commerce site

  PRODUCT
    productID : INT
    productName : VARCHAR(100), required
    productDescription : TEXT
    image : VARCHAR(100)
    price : DECIMAL
    manufacturer : VARCHAR(60)
    manufactureDate : DATETIME
    expirationDate : DATETIME
    weight : VARCHAR(10)
    dimensions : VARCHAR(20)

  PRODUCTCATEGORY      // One-to-many: Product to Category
    productID : INT
    categoryID : INT

  CATEGORY
    categoryID : INT
    categoryName : VARCHAR(60)
    catDescription : TEXT

  CONSTRAINT
    constraintID : INT
    constraintName : VARCHAR(60)
    constraintDesc : TEXT

  CATEGORYCONSTRAINT
    categoryID : INT
    constraintID : INT

  PRODUCTMEDIA
    productID : INT
    mediaID : INT

  MEDIA
    mediaID : INT
    type: VARCHAR(60)
    link : VARCHAR(100)
    productID : INT

  USER
    userID : INT
    email : VARCHAR (60), required
    username : VARCHAR (20), required
    password: VARCHAR (20), required

  PROFILE
    profileID : INT
    city : VARCHAR (20)
    state : VARCHAR (20)
    zip : INT
    country : VARCHAR (20)
    age : SMALLINT
    gender : VARCHAR (3)
    userID : INT

  MEMBERSHIP
    membershipID: INT
    membershipType : VARCHAR (20), required
    membershipDesc : TEXT

  USERMEMBERSHIP
    userID : INT
    membershipID: INT

  ORDERPRODUCT
    orderID: INT
    productID : INT
    quantity : INT       

  ORDER
    orderID: INT
    shippingMethod : VARCHAR (10), required
    userID: INT

  SHIPMENT
    shipmentID : INT
