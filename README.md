# assignment_data_modeling
Mmmmm.... dataaaaa....

By Deepak
---------

### You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text.
*  Goals 
    * To enable online students to browse multiple courses and learn lessons from the courses they are interested in.
*   Entities
    * Courses and Lessons
* Attributes
    * Course's attributes - [title, description]
    * Lesson's attributes - [title, body]
* Types
    * Course's attribute types - [title - string, description - text ]
    * Lessons's attribute types - [title - string, body - text ]
* Contraints
    * Title will have max length of 30 chars.
* Relationships
    * Course has one-to-many relationship with Lesson
    * i.e. 1 Course can have multiple Lessons, but, 1 Lesson can belong to only 1 Course
* Data Model
    * Course
        * CourseID [Primary key]
        * Title
        * Desc
    * Lesson
        * LessonID [Primary key]
        * Title
        * Body
        * CourseID [Foreign key]

### You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.

* Goals
    * To access user's profile data from user_id and to access user_ids with specific profile.
* Entities
  * Users and Profiles
* Attributes
  * User's attributes - [user_id, email]
  * Profile's attributes - [city, state, country, age, gender]
* Types
  * User's attribute types - [user_id - string, email - string ]
  * Profile's attribute types - [city - string, state - string, country - string, age - integer, gender - char]
* Contraints
  * All strings will have max length of 30 chars.
* Relationships
  * Profile has one-to-many relationship with User
  * i.e. 1 Profile can have multiple Users, but, 1 User can have only 1 Profile
* Data Model
  * User
    * user_name [Primary key]
    * email
    * ProfileID [Foriegn key]
  * Profile
    * ProfileID [Primary key]
    * city
    * state
    * country
    * age
    * gender
