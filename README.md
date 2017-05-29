# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Name: Christian Florez

## Basic
### Online Learning Platform
1. Goals: We need to display a list of courses, along with the related lessons for each course whenever a user clicks through.
2. Entities: Mainly courses and lessons.
3. Attributes & Types:
  - **Courses**
    - "id": integer
    - "title": string (25 char max)
    - "description": text (200 char max)
  - **Lessons**
    - "id": integer
    - "course-id": foreign key, primary key from courses
    - "title": string (25 char max)
    - "body": text (no limit)


### Profile Page

## Intermediate
### Message Board

## Advanced
### E-commerce site