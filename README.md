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
1. Goals: We need to allow users to enter as much demographic information as they would like and store that in a granular fashion on our db.
2. Entities: User, City, State, Country, Gender
3. Attributes & Types:
  - **User**
    - "id": integer
    - "username": string (18 char max)
    - "email": string (50 char max)
    - "cityID": integer
    - "age": integer (1 byte)
    - "genderID": integer
  - **City**
    - "id": integer
    - "city name": string (58 char max)
    - "stateID": integer
  - **State**
    -"id": integer
    -"state name": string (58 char max)
    - "countryID": integer
  - **Country**
    -"id": integer
    -"country name": string (50 char max)
  - **Gender**
    -"id": integer
    -"gender name": string (30 char max)

## Intermediate
### Message Board

## Advanced
### E-commerce site