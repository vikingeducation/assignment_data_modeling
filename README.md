# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

BASIC

1.)	Entities: 

 #Courses -Attributes: Title / Description | string / string ( VARCHAR(n) )
			  
 #Lessons -Attributes: Title / Description | string / string ( VARCHAR(n) )
 					   Foreign_key: Course_id

 Relation: 1 / to_many if the lesson can only be link with one course

2.) Entities: 

 #Users -Attributes: Username / email | string

 #Informations -Attributes: City / State / Country / Age / Gender
 					string / VARCHAR(n) / string / INTEGER(p) / CHARACTER(n)	

 Relation: 1 / 1 


 INTERMEDIATE

1.) Entities: 

 #Users

 #Posts

 #Comments


Relations: 

Users / Posts ==> 1 / many

Posts / Comments ==> 1 / many

Comments / Comments


ADVANCE

1.) Entities:

 #Users -Attributes First_name / Last_name / email

 #Address -Attributes street_number / street / city_id / State_id / Country_id

 #Products -Attributes Price / Description / Name

 #Shopping_Cart

 #JOIN Shopping cart- Order   Order_id = Shopping_cart_id

 #Orders -Attributes id / user_id / ship_address / bill_address

 #Shipments

 #City  -Attributes name

 #State  -Attributes name

 #Country  -Attributes name



























