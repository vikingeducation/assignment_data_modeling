# assignment_data_modeling

Dariusz Biskupski

#Basic

###You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. 

*Goals*
We want to display list of students, where each student has a specific course chosen, possible I could see what lessons the student is on. I want to see list of courses, where each course show adequate lessons.

*Entities*
Students
Courses
Lessons

*Attributes, Types & Constraints*
1.Students
- first_name, string, 1-64 characters long
- second_name, string, 1-64 characters long
- email, string, 1-64 characters long, must be unique, required
2.Courses
- title, string, 4-16 characters long, must be unique, required
- description, text, no limits
3.Lessons
- title, string, 4-16 characters long, must be unique, required
- body, text, no limits

*Relationships*
Students (MANY) - Courses (MANY)
Courses (ONE) - Lessons (ONE) (unless possible that some lessons can be used by more than one course)

###STUDENTS TABLE
1. Student_ID
2. first_name
3. second_name
4. email
5. created_at
6. updated_at

###COURSES TABLE
1. Course_ID
2. Title
3. Body
4. created_at
5. updated_at

###STUDENT_COURSES TABLE
1. Student_ID
2. Course_ID
3. created_at
4. updated_at

###LESSONS TABLE
1. Lesson_ID
2. Title
3. Body
4. created_at
5. updated_at
6. Course_ID


###You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.


#Intermediate

###You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.


#Advanced

###You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?
