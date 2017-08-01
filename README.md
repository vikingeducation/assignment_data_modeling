# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Name: Ian Halverson and Will Timpson

-------Basic 1.-------

Courses:
- ID          [number]
- title       [string]
- description [string]

Lessons:
- ID        [number]
- CourseID  [number] (foreign key)
- title     [string]
- body text [string]

-------Basic 2.-------
Users:
- ID
- username

Profiles:
- ID
- userID
- email
- CityID
- Age
- Gender

Cities:
- ID
- StateID
- Name

States:
- CountryID
- ID
- Name

Countries:
- ID
- Name


-------Intermediate 1.-------

Users:
- ID
- UserName

Posts:
- ID
- userID
- link
- points

Comments:
- ID
- userID
- postID
- parentCommentID
- points


-------Advanced 1.-------
