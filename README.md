# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Andrew and Kelsey

================================
Basic (Online Learning Platform)
================================

Course Table:

"Course ID", Integer
"Name", String, 4-40 characters long, must be unique, required
"Description", Text, no limits, required
"created_at", DateTime
"updated_at", DateTime

Lesson Table:

"id", Integer
"Course ID", Integer, Foreign Key
"Name", String, 1-64 characters long, required
"Description", Text, no limits, required
"created_at", DateTime
"updated_at", DateTime

================================
Basic (New User Profile Page)
================================

