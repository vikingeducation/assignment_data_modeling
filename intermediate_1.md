# Problem

You want to build a message board like [Hacker News](https://news.ycombinator.com). Users can post links. Other users can comment on these submissions or comment on the comments. How would you make sure a comment knows where in the hierarchy it lives? Design the data model for this web app.

# Solution

## Explanation

A post may have many comments, a comment belongs to one post. However, a comment may also belong to a comment. Likewise, a comment might also have many comments!

It would be a waste to create a comment reply table. The solution could be handled with the following schema and making decisions based on it at runtime.

Top level comments would be those without a set `comment_id`. Those comments with a `comment_id` would be nested.

The ordering of comments would be done by using the `created_at` timestamp.

## Schema

Post

- id SERIAL
- title VARCHAR(32)
- link VARCHAR(255)
- created_at TIMESTAMP
- user_id INTEGER FK

---

Comment

- id SERIAL
- body TEXT
- created_at TIMESTAMP
- post_id INTEGER FK
- user_id INTEGER FK
- comment_id INTEGER FK
