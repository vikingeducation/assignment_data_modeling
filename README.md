# assignment_data_modeling
Mmmmm.... dataaaaa....

Chuck Michael's (https://github.com/chuckinabox/) Solution
*Include your ERM modeling "pseudocode" in the space below*


Basic 1 ('Modeled PseudoCode/Basic1CourseLessons.png')

  Course Table

  --Course Id - unique

  --Course Title

  --Description

  --Lesson Id - foreign key


  Lesson Table

  --Lesson Id - unique

  --Lesson Title

  --Lesson Description

  --Lesson Content


Basic 2 ('Modeled PseudoCode/Basic2UserDemographic.png')

  User Table

  --User Id - unique

  --Username

  --Email

  --Location Id - foreign key

  --age

  --gender


  Location Table

  --Location Id - unique

  --City

  --State

  --Country


Intermediate 1 ('Modeled PseudoCode/Intermediate1PostComments.png')

  User Table

  --User Id - unique

  --Username

  Post Table

  --Post Id - unique

  --Link Content

  --User Id - foreign key

  --Comment Id - foreign key

  Comments Table

  --Id - unique

  --Comment Id - unique

  --User Id - foreign key

  --Content

  --Replay to Comment Id

  --Date/Time Created


Advance 1 ('Modeled PseudoCode/Advance1Ecommerce.png')

  User Table

  --User Id - unique

  --First Name

  --Last Name

  --User Name

  --Address Id - foreign key

  Order Table

  --Id - unique

  --Order Id - unique

  --User Id - foreign key

  --Address Id - foreign key

  --Product Id - foreign key

  --Quantity

  Product Table

  --Product Id - unique

  --Picture

  --Name

  --Description

  --Price


  Shipment Table

  --Id - unique

  --Order Id - foreign key

  --Address Id - foreign key

  Address Table

  --Address Id - unique

  --Street Address

  --CountryState Id - foreign key

  CountryState Table

  --CountryState Id - unique

  --Country

  --State
  
  --City
