By Johnny Steenbergen & Adrian Mui
# assignment_data_modeling

Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

GOALS
----
Serve a site with classes that have their own lesson plans and details (possibly shared details like authors etc.)

Teacher wants to put out a class and serve it to students.  Each class will likely consist of many lessons and follow a path (lesson plan).

###Entities
1. Course
	* title:string
	* description:text

2. Lesson
	* title:varchar
	* description:text
	* course_id:int 

