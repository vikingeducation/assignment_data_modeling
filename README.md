# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Alice & David!!!

BASIC
1) goal: offer course information and lessons
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

2) goal: collect demo. info on users
entities: user (only 1 profile!),  location
attr & types: user: 1) username, str < 20 char;
                    2) email, str < 50 char; <- spec. avail?
                    3)

