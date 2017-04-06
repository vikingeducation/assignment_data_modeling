# assignment_data_modeling
Mmmmm.... dataaaaa....

# Efraim

*Include your ERM modeling "pseudocode" in the space below*

## Free Online Learning Platform

```ruby
class Course
  integer :id, :auto_increment
  string :title, lengh: 64
  text :description
end

class Lesson
  integer :id, :auto_increment
  string :title, lengh: 64
  text :body
  belongs_to Courses
end

class Student
  integer :id, :auto_increment
  string :name, lengh: 128
  string :email, lengh: 256
end
```

## Profile Page

```ruby
class User
  integer :id, :auto_increment
  string :name
  integer :profile_id

class Profile
  integer :id, :auto_increment
  integer :user_id
  integer :city_id
  integer :state_id
  integer :country_id
  integer :age
  integer :gender_id
end

class City
  integer :id, :auto_increment
  string :name, lengh: 128, unique: true
end

class State
  integer :id, :auto_increment
  string :name, lengh: 128, unique: true
end

class Country
  integer :id, :auto_increment
  string :name, lengh: 128, unique: true
end

class Gender
  integer :id, :auto_increment
  string :description, lengh: 64
end
```

## Message Board

```ruby
class User
  integer :id, :auto_increment
  string :name, lengh: 128
  string :email, lengh: 256
  integer :karma
end

class Post
  integer :id, :auto_increment
  string :title, lengh: 256
  integer :link_id
  text :body
end

class Link
  integer :id, :auto_increment
  string :uri, lengh: 2048
  string :title, lengh: 256
  text :description
end

class Comment
  integer :id, :auto_increment
  integer :author # user_id
  text :body
  integer :in_reply_to # comment_id or nil
  datetime :created_at
  belongs_to(Post)
end
```

## eCommerce Site

```ruby
class Product
  integer :id, :auto_increment
  string :name
  integer :price
end

class User
  integer :id, :auto_increment
  string :first_name
  string :last_name
  string :email
end

class Address
  integer :id, :auto_increment
  integer :user_id
  integer :street_id
  string :house_number
  integer :zip_code_id
  integer :city_id
  integer :state_id
  integer :country_id
end

class Order
  integer :id, :auto_increment
  integer :user_id
  datetime :created_at
  datetime :updated_at
  boolean :placed?
end

class Shipment
  integer :id, :auto_increment
  integer :order_id
  datetime :dispatched_at
  datetime :due_to
  boolean :on_time?
end

class OrderProduct
  integer :id, :auto_increment
  integer :order_id
  integer :product_id
  integer :quantity
end
```
