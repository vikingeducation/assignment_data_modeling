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
  - course_id (primary key, unique)
  - title (String, unique)
  - description (String)
  - created_at (DateTime)
  - updated_at (DateTime)

Lesson
  - lesson_id (primary key, unique)
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


### Profile Page for new User

#### Goals

```
To collect and display demographic information in our Users' profiles.
```

#### Relationships

```
Each City belongs to a State.
Each State has many Cities.
States and Cities have a 1:many relationship.

Each State belongs to a Country.
Each Country has many States.
Countries and States have a 1:many relationship.

Each City is associated with a specific Profile.
Profiles and Cities have a 1:1 relationship (a City "belongs" to a Profile).

Each Profile belongs to a User.
Each User can have many profiles (e.g. one for residential address, one for business address).
Users and Profiles have a 1:many relationship.
```

#### Entities and Attributes
```
User
  - user_id (primary key, unique)
  - username (String, unique)
  - email_address (String, unique)
  - age (Integer)
  - gender (String, max length 6, either Male / Female)
  - created_at (DateTime)
  - updated_at (DateTime)

Profile
  - user_id (foreign key to User table)
  - created_at (DateTime)
  - updated_at (DateTime)

City
  - city_id (primary key, unique)
  - city_name (String)
  - state_id (foreign key to State table)
  - profile_id (foreign key to Profile table)
  - created_at (DateTime)
  - updated_at (DateTime)

State
  - state_id (primary key, unique)
  - state_name (String)
  - country_id (foreign key to Country table)
  - created_at (DateTime)
  - updated_at (DateTime)

Country
  - country_id (primary key, unique)
  - country_name (String, unique)
  - created_at (DateTime)
  - updated_at (DateTime)

```


## Intermediate
---

### Advanced
---
