# assignment_data_modeling
Mmmmm.... dataaaaa....

## Authors
Matthew and Vishal


### Basic

1)
#### Goals and Needs:
Keep track of courses and their corresponding lessons. Each course can have
one or more students enrolled in it. And, each student can take one or more
courses.

#### Entities:
Course and Lesson.

#### Attributes:
Course: Key, Id, Title, Description.
Lesson: Key, Id, Title, Body_Text.

#### Types and Constraints
Course: Key(Integer), Id (String), Title (String), Description (Text).
Constraints: Key has to be unique, Id has to be non-empty string, Title
should be less than 255 characters, and Description should be text with at
least 20 chars and no limit.

Lesson: Key(Integer), Id (String), Title (String), Body_Text (Text).
Constraints: Key has to be unique, Id has to be non-empty string, Title
should be less than 255 characters, and Body_Text should be text with at
least 20 chars and no limit.

#### Relationships
A course can have one or more lessons, and a lesson can potentially belong
to more than one course. So, this is a M:N (many to many) relationship.



2)
#### Goals and Needs:
The login site needs to keep track of users, and each user may have only one 
profile. A profile should keep track of username, email, city, state, country,
age, and gender, as well as username and email. 

#### Entities:
User, Profile, Password (Encrypted). 

#### Attributes:
User: UserID, Username, Email.
Profile: City, State, Country, Age, Gender, UserID.
Password: Password, UserID.

#### Types and Constraints
User: UserID(Integer), Username(String), Email(String).
Constraints: UserID must be unique, unalterable, non-empty, Username must be
unique and non-empty and must not contain special characters, Email must be a
properly formatted email address.

Profile: City(String), State(String), Country(String), Age(Integer),
Gender(String), UserID(Integer).
Constraints: City, State, Country, and Gender have to be non-empty strings.
State and Country should match a state or country. UserID must be unique,
unalterable, non-empty.

Password: Password(String), UserID(Integer).
Constraints: Password should be at least 8 characters long, and should contain
at least 1 digit. UserID must be unique, unalterable, non-empty.

#### Relationships
User and Profile: 1-1.
User and Password: 1-1.



### Intermediate
1.

#### Entities:
User, Password, Post, Favorites, and Comment.

#### Attributes
User: UserID, Username, Created, Clout, and About.
Password: Password, UserID.
Post: PostID, UserID, Title, Body, Created, Upvotes.
Favorites: UserID, PostID, Date.
Comment: CommentID, PostID, Created.

#### Types and Constraints
User: UserID(Integer), Username(String), Created(DateTime), Clout(Integer),
and About(String).
Constraints: UserID must be unique, unalterable, non-empty, Username must be
unique and non-empty and must not contain special characters. Created must
be a DateTime, Clout should be a non-negative integer. And, About should be
a non-empty string.

Password: Password(String), UserID(Integer).
Constraints: Password should be at least 8 characters long, and should contain
at least 1 digit. UserID must be unique, unalterable, non-empty.

Post: PostID(Integer), UserID(Integer), Title(String), Body(Text),
Created(DateTime), Upvotes(Integer).
Constraints: PostID must be unique, unalterable, non-empty. UserID must be
unique, unalterable, non-empty. Title must be a non-empty string, and Body
is an optional text.

Favorites: UserID(Integer), PostID(Integer), Date(DateTime).
Constraints: UserID must be unique, unalterable, non-empty. PostID must be
unique, unalterable, non-empty. And, Date must be of type DateTime.

Comment: CommmentID(Integer), PostID(Integer), Created(DateTime).
Constraints: CommentID must be unique, unalterable, non-empty. PostID must
be unique, unalterable, non-empty. And, Created must have type DateTime.


### Advanced
1.
#### Entities
Product, User, Order, Shipment, ProductOrder.

#### Attributes
Product: ProductID, Name, Description, Price, Weight, Dimension.
User: UserID, First_Name, Last_Name, Street_Address, City, State, Zip_Code,
Email.
Order: OrderID, Created, UserID.
Shipment: ShipmentID, OrderID, UserID, Shipment_Date, Delivered.
ProductOrder: ProductID, OrderID.

#### Types and Constraints

