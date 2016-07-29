By Johnny Steenbergen & Adrian Mui
# assignment_data_modeling

Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

GOALS
----
Serve a site with classes that have their own lesson plans and details (possibly shared details like authors etc.)

Teacher wants to put out a class and serve it to students.  Each class will likely consist of many lessons and follow a path (lesson plan).

###Entities

1. Class
  * category
  * teacher (reffed)
  * lesson plan (reffed)
  * description
  * title
  * status
2. lesson plan
  * category
  * title
  * description
  * lessons
  * comments (reffed)
3. authors/teacher
  * name
  * experience
  * category
4. Comments?
  * body/description
  * posted date
5. Categories
  * title/name
  * description
6. Lesson
  * title description
  * description
  * comments (reffed)