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

