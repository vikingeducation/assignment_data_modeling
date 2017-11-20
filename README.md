# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*


Basic
  1. Online Learning Platform
    Course:
      - courseId: Integer
      - title: String
      - description: String
    Lesson:
      - lessonId: Integer
      - title: String
      - body: String
      - courseId: Integer

  2. Profile Page
    User:
      - userId: Integer
      - username: String
      - email: String
    Demographic:
      - demoId: Integer
      - city: String
      - state: String
      - country: String
      - age: Integer
      - gender: String
      - userId: Integer

Intermediate
  1. Message Board
    User:
      - userId: Integer
      - username: String
      - email: String
    Post:
      - postId: Integer
      - link: String
      - userId: Integer
    Comment:
      - commentId: Integer
      - postId: Integer
      - userId: Integer
      - comment: String

Advanced:
  1. E-Commerce Site
    User:
      - userId: Integer
      - username: String
      - email: String
      - addressId: Integer
    Address:
      - addressId: Integer
      - streetAddress: String
      - cityId: Integer
    City:
      - cityId: Integer
      - cityName: String
      - stateId: Integer
    State:
      - stateId: Integer
      - state: String
      - countryId: Integer
    Country:
      - countryId: Integer
      - countryName: String
    Product:
      - productId: Integer
      - name: String
      - price: Integer
      - description: String
    Order:
      - orderId: Integer
      - userId: Integer
      - productId: Integer
      - addressId: Integer
      - quantity: Integer
    Shipment:
      - shipmentId: Integer
      - orderId: Integer
      - addressId: Integer
