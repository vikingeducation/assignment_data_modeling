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
