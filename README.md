# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

## Basic
---
### Online learning platform

#### Goals

```
To display the appropriate lesson content for each lesson in a course, for each student.
```

#### Relationships

```
Many Courses can have many Lessons. This is a many:many relationship.

We will use a join table (CourseLesson) with two columns (the primary keys of the Course and Lesson table respectively) per row to model this relationship.
```

#### Entities and Attributes

```
Course
  - title (String, unique)
  - description (String)
  - created_at (DateTime)
  - updated_at (DateTime)

Lesson
  - title (String, unique)
  - body (String)
  - created_at (DateTime)
  - updated_at (DateTime)

CourseLesson
  - course_id (Integer)
  - lesson_id (Integer)
  - created_at (DateTime)
  - updated_at (DateTime)

```



## Intermediate
---

### Advanced
---
