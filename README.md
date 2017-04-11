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

  PRODUCT             // X:X ORDER, 1:X MEDIA, CATEGORY
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

  PRODUCTCATEGORY      // Join
    productID : INT
    categoryID : INT

  CATEGORY             // X:X CONSTRAINT, X:1 PRODUCT
    categoryID : INT
    categoryName : VARCHAR(60)
    catDescription : TEXT

  CONSTRAINT           // X:X CATEGORY
    constraintID : INT
    constraintName : VARCHAR(60)
    constraintDesc : TEXT

  CATEGORYCONSTRAINT   // Join  
    categoryID : INT
    constraintID : INT

  PRODUCTMEDIA         // Join
    productID : INT
    mediaID : INT

  MEDIA                // X:X PRODUCT
    mediaID : INT
    type: VARCHAR(60)
    link : VARCHAR(100)
    productID : INT

  USER                 // 1:1 PROFILE, 1:X ORDER, SESSION,  X:X MEMBERSHIP
    userID : INT
    email : VARCHAR (60), required
    username : VARCHAR (20), required
    password: VARCHAR (20), required
    active : BOOLEAN

  PROFILE             // 1:1 USER
    profileID : INT
    city : VARCHAR (20)
    state : VARCHAR (20)
    zip : INT
    country : VARCHAR (20)
    age : SMALLINT
    gender : VARCHAR (3)
    userID : INT

  MEMBERSHIP          // X:X USER
    membershipID: INT
    membershipType : VARCHAR (20), required
    membershipDesc : TEXT

  USERMEMBERSHIP      // Join
    userID : INT
    membershipID: INT

  ORDERPRODUCT        // Join
    orderID: INT
    productID : INT
    quantity : INT       

  ORDER               // X:1 USER, X:X PRODUCT, 1:X SHIPMENT
    orderID: INT
    gift : BOOLEAN
    city : VARCHAR (20), required
    state : VARCHAR (20), required
    zip : INT, required
    country : VARCHAR (20), required
    userID: INT

  SHIPMENT            // X:1 ORDER
    shipmentID : INT
    shipDate : DATETIME
    shipMethod : VARCHAR (10), required
    carrier : VARCHAR(10), required
    orderID : INT

  SESSION   // X:1 USER, SITE
    userID : INT
    sessionID : INT
    pageViews : INT
    timeOnSite : INT
    siteID : INT

  PAGEANALYTICS   // X:1 SESSION
    sessionID : INT
    pageID  : INT
    wasBounced : BOOLEAN
    timeOnPage : INT

  PAGE    //    X:1 PAGEANALYTICS
    pageID : INT
    pageDetails : TEXT
    monthlyVisits : INT
    linkID : INT

  LINK    // X:1 PAGE
    linkID : INT
    title : VARCHAR (100), required
    url : VARCHAR (100), required
    count : INT

  SITE   //  1:X SESSION, USER
    siteID: INT
    monthlyVistors : INT
    totalSessions : INT
    timePerSession : INT
