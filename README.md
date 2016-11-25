# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Pseudocode:

1. Tables and Columns:
    Course -  Title (string, min 3 - max 60 chars)
              Description (text, min 3 chars)

    Lesson - Title (string, min 3 - max 60 chars)
             Body (text, min 3 chars )
             Foreign key: Course ID

2. NOW:
    Table: User - Username  
                  Email

  ADD:
    Tables: Profile - Foreign key: User ID
                      Foreign key: City ID
                      Foreign key: Gender ID
                      Age (Integer, min 5 - max 120)

            City - Foreign key: State ID    (Empty for non-US, N/A?)
                   Foreign key: Country ID
                   Name (string, min 2 - max 100)

            State - Foreign key: Country ID
                    Postal_abbr (string, length == 2 )

            Country - Name (string, min 2 - max 100)

INTERMEDIATE

1.
