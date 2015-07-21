# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Example 1

Entities: Lessons, Courses, Students

Lessons-

1. ID, int
2. Title, string, required, must be unique
3. Content, string, no limits

Courses-

1. ID, int
2. Title, string, required
3. Description, string

Students-

1. ID, int
2. First_Name, string
3. Last_Name, string

Join Tables

StudentCourses Table

1. Student_ID
2. Course_ID

CourseLesson Table

1. Course_ID
2. Lesson_ID



Example 2

Entities: User, Address

User-

1. ID, int
2. username, string
3. email, string
4. password, string
5. age, int
6. gender, string
7. address_ID, string

Address-

1. ID, int
2. house number
3. street name
4. city
5. state
6. zip code
7. country



Example 3

Entities: Users, First Level Comments, Second Level Comments

User-

1. ID
2. name

-----------------------------------------------------

First Level Comments-

1. ID
2. Body

Second Level Comments-

1. ID
2. Body
3. First Level ID

UserComment Table

1. User ID
2. First Level ID

-----------------------------------------------------

Comment

1. ID
2. Body
3. Parent

UserComment

1. user ID
2. comment ID