# assignment_data_modeling
Mmmmm.... dataaaaa....

Anthony Sin

*Include your ERM modeling "pseudocode" in the space below*

## Basic
You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.

You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app. 

Goals: display courses and lessons

| courses          |         |          |
|------------------|---------|----------|
| title            | string  | required |
| description      | text    | required |
| has many lessons |         |          |

| lessons           |         |                              |
|-------------------|---------|------------------------------|
| course_id         | integer | required, index, foreign key |
| title             | string  | required                     |
| body              | text    | required                     |
| belongs to course |         |                              |

| users           |         |          |
|-----------------|---------|----------|
| username        | string  | required |
| email           | string  | required |
| has one profile |         |          |

| profiles        |         |                              |
|-----------------|---------|------------------------------|
| user_id         | integer | required, index, foreign key |
| city            | string  |                              |
| state           | string  |                              |
| country         | string  |                              |
| age             | integer |                              |
| gender          | string  |                              |
| belongs to user |         |                              |


## Intermediate

You want to build a message board like Hacker News. Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.

| users          |         |          |
|----------------|---------|----------|
| name           | string  | required |
| email          | string  | required |
| has many posts |         |          |

| posts                  |         |                              |
|------------------------|---------|------------------------------|
| user_id                | integer | required, index, foreign key |
| title                  | string  | required                     |
| link                   | string  | required                     |
| description            | string  | required                     |
| belongs to user        |         |                              |
| has many post_comments |         |                              |

| post_comments     |         |                              |
|-------------------|---------|------------------------------|
| post_id           | integer | required, index, foreign key |
| title             | string  | required                     |
| body              | text    | required                     |
| belongs to posts  |         |                              |
| has many comments |         |                              |

| comments                  |         |                              |
|---------------------------|---------|------------------------------|
| post_comment_id           | integer | required, index, foreign key |
| title                     | string  | required                     |
| body                      | text    | required                     |
| belongs to post_comments  |         |                              |

## Advanced

You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app. How can you handle the quantity of items in each order? How do you know where an order has been shipped? Bonus: What happens to your historical data if a user opts to delete their account? How might you handle this?
(Optional) You want to collect analytics data for visitors and logged-in-users who are visiting your website. This includes basic information like page views and more advanced things like link clicks and time on page. You ideally want to tie this information back to a given user if possible. Design the data model for this analytics infrastructure. You'll have to use your judgement about what additional attributes would be interesting to track












