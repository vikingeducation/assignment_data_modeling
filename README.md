# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*
David Watts

Basic 1.
  Course table:
    -ID (integer)
    -Title (string(30))
    -Description (string(250))
  
  Lesson table:
    -ID (integer)
    -Title (string(30))
    -Body (string(30000))
    
  Join table:
    -Course ID integer
    -Lesson ID integer
  
Basic 2. 
  User table:
    -ID (integer)
    -username (string(30))
    -email (string(255))
    -age (integer)
    -gender (char(1))
    -cityID integer
    
  City table:
    -city ID integer
    -Name string(#)
    -State ID integer
  
  State table:
    ID: (integer)
    name: (string(20))
    Country ID: (integer)
    
  Country table:
    ID: (integer)
    name: (string(20))
  
Intermediate 1:
  Link table:
    -ID (integer)
    -description (string(255))
    -link (string(255))
  Comment table:
    -ID (integer)
    -comment (string( 500))
    -comment type (:comment || :link)
    -type ID (integer)
    
advanced 1. 
