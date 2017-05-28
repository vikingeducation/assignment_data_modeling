# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*


Chad Lucas

1. Goal is for students who visit the site to view different courses and the lessons associated with each course


								Courses

course_id: int | course_title: string, unique: true, presence: true | description: string |


								Lessons

lesson_id: int | lesson_title: string, unique: true, presence: true | title_body: string | course_id: foreign key




2. Goal is to add demographic information to existing user model

											User

user_id:int | username: string, unique: true, presence: true | email: string, unique: true, presence: true | Age: int | Gender: string


											location
location_id: int | City: string | State: string | zipcode: int | user_id: foreign_key|


3. Goal is for users to post links and allow for other users to be able to comment on links and other comments.

									User
user_id | username: string, unique: true, presence: true |

									Link
link_id | link_address: string, presence: true | description: string |

									Comment
comment_id | comment_body: string | user_id: foreign_key | link_id: foreign_key  


4. 
						User
Id:int | name: string | address: string | phone#: string

						product
id: int | name: string| description: string | quantity: int|

						order
id: int | product_id: foreign_key | user_id: foreign_key | shipped: boolean|