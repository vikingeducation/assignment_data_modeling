# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

- models
- columns
- validations
- associations



BASIC
1. online learning platform
- Students do not need a table
- Course can have many lessons
- Lessons could in theory be part of many Courses?
- Courses table; columns = title, description; primary key = unique id
- Lessons table; foreign key is course_id; columns = title, body; primary key = unique id

2. profile page
- user should only have one profile
- email should be additional primary key
- I would add this information to the existing Users table because I will most likely want to query to find out demographic information; how many users do I have from MI? how many users are between 18-49? if I was adding addresses for a specific function, like shipping, I might break out into an addresses table


INTERMEDIATE
1. Hacker News
- User can post many links (one-to-many, if a different User posts a duplicate link it's a new Link)
- Link can have many comments (one-to-many, can't write the same exact comment on a different Link, it would get a new id)
- Users table with login info; primary key = unique id
- Comments table with text, timestamp, foreign key = user_id
- Links table with an entry for each link, has a foreign key of user_id as well
- Join table with a row for each comment; comment_id, user_id, link_id (can be blank if the comment is on a comment), root_comment_id (what the original comment is connected to, can be blank if the comment is on a link)
- User posts a new Link: gets added to Links table, and also to the join table


ADVANCED
1. simple commerce site
- Products and Orders are many-to-many, so create a join table
- Product can be part of many orders, but each order only has a single instance of that Product
- User can place many orders
- Order can only be assigned to one User, many products can be part of one order
- Shipment can only be associated with one order, but you can have multiple shipments per single order
- (not tracking inventory or billing in this thought exercise)

2. analytics data
- Visitor (not logged in)
- User (logged in)
- tracking: page views, link clicks, time on page
- table for each page, for example: IndexPage has a row for each time it was visited; the columns are LoggedIn (boolean), TimeSpent (float, seconds), UserId (nil if Visitor)
- would be able to do several joins and SQL summations to get info about a single User, and would also be able to quickly get info on each page