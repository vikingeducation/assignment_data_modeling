# Problem

You are building a free online learning platform which will be used by students who are exclusively online (but don't need to be logged in or kept track of). You offer many different courses, each with a title and description, and each course has multiple lessons which can be displayed. Lesson content consists of a title and body text. What are the Goals? Entities? Attributes, types and constraints? Relationships? Design the data model for this web app.

# Solution

## Explanation

Courses and lessons have a one-to-many relationship.
With the following schema, a query can easily select all courses, all lessons and lessons that are only associated with a single course.

## Schema

Courses

- id SERIAL
- title VARCHAR(32)
- body TEXT

---

Lessons

- id SERIAL
- title VARCHAR(32)
- body TEXT
- course_id INTEGER FK