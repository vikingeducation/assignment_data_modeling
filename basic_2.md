# Problem

You are building the profile page for a new User on your login site. You are already storing your User's username and email, but now you want to collect demographic information like City, State, Country, Age and Gender. Think -- how many profiles should a User have? How would you relate this to the User model? Design the data model for this web app.

# Solution

## Explanation

A user should only have a single profile. This a is one-to-one relationship between user and profile. Thus a foreign key is put on both the user and profile table.

Retrieving the location of a user is more complex. A location may change and is not a property of the profile. It is more a global constant that may be updated as the world changes.

To mimic this, a city, state, country, and zip code table are created to independently store the location data. Then the profile can link to these through the zip code only. Since the zip code has a reference to the city and the city then leads up the chain to country the entire location can be inferred by the zip code.

Age of a user can be determined at runtime by subracting the birthday given in the user table with the current date.

Gender, while it seems easy enough to store as a string of text, should have it's own table. This is because it allows modification without changing profile rows. Also, it allows scaling. What if for instance a new gender is discovered in the future?

## Schema

Users

- id SERIAL
- email VARCHAR(255)
- username VARCHAR(32)
- profile_id INTEGER FK

---

Profiles

- id SERIAL
- birthday DATE
- zip_code_id INTEGER FK
- gender_id INTEGER FK

---

ZipCodes

- id SERIAL
- code VARCHAR(32)
- city_id INTEGER FK

---

Cities

- id SERIAL
- name VARCHAR(32)
- state_id INTEGER FK

---

States

- id SERIAL
- name VARCHAR(32)
- country_id INTEGER FK

---

Countries

- id SERIAL
- name VARCHAR(32)

---

Genders

- id SERIAL
- name VARCHAR(16)



