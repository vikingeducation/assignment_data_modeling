# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Alice & David!!!

#BASIC
##1
goal: offer course information and lessons
entities: course (has many lessons), lesson
attr & types: course: 1) name = string < 40 char.;
                      2) desc = string < 400 char.

              lesson: 1) title = string < 100 char;
                      2) body = string, no limit
                      3) course ID <- FOREIGN KEY!

relationship: 1 course : many lessons
tables:
Course Table: 1) ID, int
              2) name, string, 1-40 char.
              3) description, string, 1(50)-400 char. <-min ok?
              4) created_at, DateTime
              5) updated_at, DateTime (can add col for subj.)

Lesson Table: 1) ID, int
              2) title, string, 1-100 char.
              3) body = string, >0 char.
              4) created_at, DateTime
              5) updated_at, DateTime
              6) course_id, int

##2
goal: collect demo. info on users
entities: user (only 1 profile!),  location
attr & types: user: 1) username, str < 20 char;
                    2) email, str < 50 char; <- spec. avail?
                    3) age, int < 4 chars
                    4) gender, 1 char
                    5) location

          location: 1) city, string < 30 char
                    2) state, string < 30 chars
                    3) country, string < 30 chars
                    4) zip code, int (optional)

relationship: many users : 1 location
tables:
User Table:   1) ID, int
              2) Username, str 1-20 chars
              3) email, str 5-40 chars
              4) age, int 1-4 chars
              5) gender, char (1)
              6) location ID, int
              7) created_at, DateTime
              8) updated_at, DateTime

Location Table:     1) Location ID, int
                    2) City, string 1-30 char
                    3) state, string 1-30 chars
                    4) country, string 1-30 chars
                    5) zip code, int (optional)
                    6) created_at, DateTime
                    7) updated_at, DateTime

#INTERMEDIATE

Goal: To build a message board where each post can have comments and responses to those comments

Entities: User, Posts, Comments

Attributes & Types:

    Users:      1) Username
                2) Email

    Posts:      1) Title
                2) Link to article
                3) Comments

    Comments:   1) Author (user)
                2) Time of comment
                3) Body
                4) Parent Post ID
                5) Parent Comment ID

Relationships:
      1) Users -> Posts         - 1 User : Many Posts
      2) Users -> Comments      - 1 User : Many Comments
      3) Posts -> Comments      - 1 Post : Many Comments
      4) Comments -> Comments   - 1 Comment : Many Comments

Tables:

    User Table:         1) Username, string 1-30 chars (Primary Key)
                        2) Email, string 5-40 chars
                        3) created_at, DateTime
                        4) updated_at, DateTime

    Post Table:         1) Post ID, int (Primary Key)
                        2) Title, string 1-50 chars
                        3) Link to article, string <500 chars
                        4) Username, string (Foreign Key)
                        5) created_at, DateTime
                        6) updated_at, DateTime

    Comment Table:      1) Author, string 1-30 char(user foreign key)
                        2) created_at, DateTime
                        3) updated_at, DateTime
                        4) body, string  < 1000 chars
                        5) Post ID (foreign key)
                        6) Parent Comment ID (foreign key) (optional)
                        7) Comment ID (primary key) OR 4 combo ID's?



