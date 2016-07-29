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
  belongs_to :user

class Comment
  belongs_to :post
  belongs_to :user
  has_many :comments

class User
  has_many :posts
  has_many :comments




3. Advanced

class Product
has_many: orders


name: string, price: integer

class ProductOrders
belongs_to :product
belongs_to :order


class PageAnalytics
belongs_to :user
belongs_to :product

page_views:integer, clicked_links:integer, time_spent:integer




class User
has_one :profile
has_many :orders
username: string, email: string, password: string, created_at: date, updated_at: date


class Order
has_many: products
belongs_to: user
has_one: shipment




class Shipment
belongs_to: order
belongs_to: address
belongs_to: profile



class Profile
belongs_to :user
has_many :addresses(should profile have address?)
has many :shipments
first_name: string
last_name: string
age: integer




class Address
belongs_to :user, foreign_key: user
belongs_to :profile, foreign_ley :profile

city: string, state: string, street: string, street number: integer, zip: integer, country: string


3. Advanced(optional)















??????
class User
has_many :addresses

class Profile
has_one :addressable

class Address
belongs_to :addressable, polymorphic: true
1, "1 main street"
?????