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

User Table:

"User ID", Integer
"Username", String, 4-40 characters long, must be unique, required
"Email", Text, no limits, required, must be email, unique
"Password", Text, no limits, required
"created_at", DateTime
"updated_at", DateTime

Profile Table:

"id", Integer
"User ID", Integer, Foreign Key
"Address ID", Integer
"Age", Integer, 0-200
"Gender ID", Integer
"created_at", DateTime
"updated_at", DateTime

Gender Table:

"id", Integer
"name", Text, no limits
"created_at", DateTime
"updated_at", DateTime

Address Table:

"id", Integer
"Country ID", Integer
"State ID", Integer
"City ID", Integer
"created_at", DateTime
"updated_at", DateTime

Country Table:

"id", Integer
"name", Text, no limits
"created_at", DateTime
"updated_at", DateTime

State Table:

"id", Integer
"Country ID", Integer, Foreign Key
"name", Text, no limits
"created_at", DateTime
"updated_at", DateTime

City Table:

"id", Integer
"State ID", Integer, Foreign Key
"name", Text, no limits
"created_at", DateTime
"updated_at", DateTime

===========================================
Intermediate (Build a Message Board)
===========================================

User Table:

"User ID", Integer
"Username", String, 4-40 characters long, must be unique, required
"Email", Text, no limits, required, must be email, unique
"Password", Text, no limits, required
"created_at", DateTime
"updated_at", DateTime

Link Table:

"Link ID", Integer
"User ID", Integer, Foreign Key
"Link URL", String, no limits
"created_at", DateTime
"updated_at", DateTime

Comment Table:

"Comment ID", Integer
"User ID", Integer, Foreign Key, required
"Link ID", Integer, Foreign Key, required
"Comment Text", text, no limits
"Depth", Integer
"Parent Comment ID", Integer, Foreign Key, not required
"created_at", DateTime
"updated_at", DateTime

================================
Basic (New User Profile Page)
================================

User Table:

"User ID", Integer
"Username", String, 4-40 characters long, must be unique, required
"Email", Text, no limits, required, must be email, unique
"Password", Text, no limits, required
"created_at", DateTime
"updated_at", DateTime

Oder Table:

"Order ID", Integer
"User ID", Integer, Foreign Key, required
"created_at", DateTime
"updated_at", DateTime

Product Table:

"Product ID", Integer
"name", Text, no limit, required
"description", Text, no limit, required
"price", Double precision, required
"stock", Integer, required
"manufacturer", Text, no limit, required
"created_at", DateTime
"updated_at", DateTime

OrderProduct Table:

"OrderProduct ID", Integer
"Order ID", Integer, Foreign Key, required
"Product ID", Integer, Foreign Key, required
"created_at", DateTime
"updated_at", DateTime

Shipment Table:

"Shipment ID", Integer
"Order ID", Integer, Foreign Key, required
"status", Text, no limit, required
"shipped_from", Text, no limit, required
"destination", Text, no limit, required
"created_at", DateTime
"updated_at", DateTime

ProductUser Table:


"ProductUser ID", Integer
"Product ID", Integer, Foreign Key, required
"User ID", Integer, Foreign Key, required
"views", Integer, no limit, required
"total_time", Double precision, no limit, required
"created_at", DateTime
"updated_at", DateTime
