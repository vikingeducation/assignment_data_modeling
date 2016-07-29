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
  belongs_to :user

  age:integer, gender:string

class GeographicProfle
  belongs_to :user

  city:string, state:string, country:string


2. Intermediate

class Post
  has_many :comments

class Comment
  belongs_to :post
  has_many :comments




3. Advanced

class Product


class User
has_many :addresses
has_one :profile



class Order



class Shipment


class Profile
belongs_to :user
has_one :address(should profile have address?)


class Address
belongs_to :user, foreign_key: user


