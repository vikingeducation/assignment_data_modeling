# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Name: Ian Halverson and Will Timpson

-------Basic 1.-------

Courses:
- ID          [number]
- title       [string]
- description [string]

Lessons:
- ID        [number]
- CourseID  [number] (foreign key)
- title     [string]
- body text [string]

-------Basic 2.-------
Users:
- ID         [number]
- username   [string]

Profiles:
- ID        [number]
- userID    [number] (foreign key)
- email     [string]
- CityID    [number] (foreign key)
- Age       [number]
- Gender    [string]

Cities:
- ID        [number]
- StateID   [number] (foreign key)
- Name      [string]

States:
- CountryID   [number] (foreign key)
- ID          [number]
- Name        [string]

Countries:
- ID          [number]
- Name        [string]


-------Intermediate 1.-------

Users:
- ID          [number]
- UserName    [string]

Posts:
- ID          [number]
- userID      [number] (foreign key)
- link        [string]
- points      [number]

Comments:
- ID               [number]
- userID           [number] (foreign key)
- postID           [number] (foreign key)
- parentCommentID  [number] (foreign key)
- points           [number]


-------Advanced 1.-------
Products:
- ID            [number]
- Name          [string]
- Description   [string]
- Price         [number]
- Weight        [number]
- Volume        [number]

Users:
- ID          [number]
- Username    [string]
- Email       [string]
- Active?     [boolean]

Addresses:
- ID          [number]
- UserID      [number] (foreign key)

Orders:   
- ID            [number]
- UserID        [number] (foreign key)
- Order Date    [number]

Shipments:
- ID            [number]
- UserID        [number] (foreign key)
- AddressID     [number] (foreign key)
- OrderID       [number] (foreign key)
- Ship Date     [number]

*****Joins*****
ProductUserJoin:
- ProductID       [number] (foreign key)
- UserID          [number] (foreign key)

ProductOrderJoin:
- ProductID         [number] (foreign key)
- OrderID           [number] (foreign key)

ProductShipmentJoin:
- ProductID         [number] (foreign key)
- ShipmentID        [number] (foreign key)

---------Advanced 2.-----------
Users:
- ID              [number]
- Username        [string]

UserProfiles:
- ID                [number]
- UserID            [number] (foreign key)
- Misc. Attrs.      [?]

Sessions:
- ID                      [number]
- BrowserSessionToken     [number]
- UserID                 [number]    (foreign key)
- Duration               [number]   

Links:
- ID              [number]
- URL             [number]
- Text            [number]

LinkClicks:
- ID              [number]
- LinkID          [number] (foreign key)
- dateTime          [number]

Pages:  
- ID              [number]
- URL             [number]

PageProfiles:
- ID              [number]
- PageID          [number] (foreign key)
- Misc. Attrs.    [number]

PageViews:
- ID              [number]
- PageID            [number] (foreign key)
- DateTime          [number]


*****Joins*****
SessionLinkJoin:
- SessionID         [number] (foreign key)
- LinkID            [number] (foreign key)

SessionPagesJoin:
- SessionID         [number] (foreign key)
- LinkID            [number] (foreign key)

LinkClicksSessionJoin:
- SessionID         [number] (foreign key)
- ClicksID          [number] (foreign key)

PageViewSessionJoin:
- SessionID           [number] (foreign key)
- PageViewsID         [number] (foreign key)
