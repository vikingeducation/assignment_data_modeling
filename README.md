# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*


Luke/schoetlr


Psuedocode:


1)

Table: Courses
Columns:
        title: String
        description: String

Table: Lessons
Columns:
        title: String
        body: String
        course_id: Integer


2)

Table: User
Columns:
        username: String
        email: String

Table: Profile
Columns:
        age: Integer
        gender: String

Table: City
Columns:
        name: String
        profile_id: Integer

Table: State
Columns:
        name: String
        profile_id: Integer


Table: Country
Columns:
        name: String
        profile_id: Integer



3)

Table: Users
Columns:
        user_name: String

Table: Submissions
Columns:
        title: String
        content: String
        user_id: Integer

Table: Comments
Columns:
        content: String
        comment_id: Integer
        user_id: Integer
        submission_id: Integer


4)

Table: Users
Columns:
        first_name: String
        last_name: String

Table: Products
Columns:
        name: String
        price: Float



Table: Orders
Columns:
        user_id: Integer
        product_id: Integer

Table: Shipments
Columns:
        order_id: Integer
        street_address: String
        city: String
        state: String
        country: String