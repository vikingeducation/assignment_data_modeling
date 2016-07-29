By Johnny Steenbergen & Adrian Mui
# assignment_data_modeling

Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

#Basics

Basics #1

GOALS
----
Serve a site with classes that have their own lesson plans and details (possibly shared details like authors etc.)

Teacher wants to put out a class and serve it to students.  Each class will likely consist of many lessons and follow a path (lesson plan).

###Entities
1. Course
	* title:varchar
	* description:text

2. Lesson
	* title:varchar
	* description:text
	* course_id:int 


Basics #2

Goals
----
Obtain users information and expand to info like City, State, Country, Age and Gender

Should have just 1 profile.

###Entities
1. Profile
  * user_id:int
  * location_id:int
  * age:int
  * gender:varchar
2. User
  * username:varchar
  * email:varchar
3. Location
  * city:varchar
  * state:varchar
  * country:varchar

  
#Intermediate

Intermediate #1: hacker news

Goals
----
Have posts and show them, allow for comments, and show them, and keep order integrity.

###Entities
1. Post/Link
  * title:varchar
  * link:varchar
  * vote_score:int
2. Comment
  * post_id:int
  * comment_id:int
  * vote_score:int
  * description:text

How would we make sure a comment knows where in the heirarch it lives?
 -> Follow the post_id then go to comment_id which it would be nested under.  Find other comments in tat section and compare vote_score.