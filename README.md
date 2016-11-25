# assignment_data_modeling
Mmmmm.... dataaaaa....

Dexter Ford
Jessica Gillan

*Include your ERM modeling "pseudocode" in the space below*

Pseudocode:

1. Tables and Columns:
    Course -  Title (string, min 3 - max 60 chars, present)
              Description (text, min 3 chars, present)

    Lesson - Title (string, min 3 - max 60 chars, present)
             Body (text, min 3 chars, present)
             Foreign key: Course ID (present)

2. NOW:
    Table: User - Username  
                  Email

  ADD:
    Tables: Profile - Foreign key: User ID (present)
                      Foreign key: City ID (present)
                      Foreign key: Gender ID (optional)
                      Age (Integer, min 5 - max 120, present)

            City - Foreign key: State ID (optional)
                   Foreign key: Country ID (present)
                   Name (string, min 2 - max 100, present)

            State - Foreign key: Country ID (present)
                    Postal_abbr (string, length == 2, present )

            Country - Name (string, min 2 - max 100, present)

            Gender - Name (string, prepopulated)

INTERMEDIATE

1. NOW:
    Table: User - ???

    ADD: Link - Foreign key: User ID (present)
                Link URL (string, REGEX validation, present)
                Image URL (string, REGEX validation, optional)
                Title (string, min: 2, max: 130, present)
         Comment - Foreign key: User ID (present)
                   Foreign key: parent Link ID (optional, maybe present?)
                   Foreign key: parent Comment ID (optional)
                   Body (text, min 2, max 500) (present)

ADVANCED

1. Product - Name (string, min-max)
             Description
