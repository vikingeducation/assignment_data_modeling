Dylan and Alex

# assignment_data_modeling
Mmmmm.... dataaaaa....


*Include your ERM modeling "pseudocode" in the space below*


1. Basic

class Course
  has_many :lessons, through :CourseLessons

  -Title:string, description:text

class Lesson
  has_many :courses, through :CourseLessons

  -Title:string, body:text

class CourseLessons
  belongs_to :course, foreign_id :course_id
  belongs_to :lesson, forieng_id :lesson_id


class User
  has_one :demographicProfile
  has_one geographicProfile

  username:string, email:string

class DemographicProfile
  has_one :user

  age:integer, gender:string

class GeographicProfle
  has_one :user

  city:string, state:string, country:string
