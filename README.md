# assignment_data_modeling
Mmmmm.... dataaaaa....

By Deepak
---------

# Online learning platform
##1.  Goals
To enable online students to browse multiple courses and display lessons from a particular course.
##2. Entities
Courses and Lessons
##3-4. Attributes and Types

###Courses:
1. “title", String, 1-64 characters long, must be unique, required
2. "body", Text, no limits

###Lessons:
1. “title", String, 1-64 characters long, must be unique, required
2. “body", Text, no limits

##5. Relationships
   * Course has one-to-many relationship with Lesson
   * i.e. 1 Course can have multiple Lessons, but, 1 Lesson can belong to only 1 Course

##6. Data Model
   * Course
      * CourseID [Primary key]
      * Title
      * Desc
   * Lesson
      * LessonID [Primary key]
      * Title
      * Body
      * CourseID [Foreign key]

# User on your login site. witH demographic information like City, State, Country, Age and Gender.

##1.  Goals
To access user's profile data from user_id and to access user_ids with specific profile.
##2. Entities
Users and Profiles
##3-4. Attributes and Types
###Users:
1. "user_id" 
2. "email"

###Profiles:
1. "city"
2. "state"
3. "country"
4. "age"
5. "gender"

##5. Relationships
  * Profile has one-to-many relationship with User
  * i.e. 1 Profile can have multiple Users, but, 1 User can have only 1 Profile

##6. Data Model
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
