# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Justin Mullis' fork

##Online Learning Platform  

**Course**  
Title - string, length maximum 50  
Description - text  

**Lesson**  
Course_ID - foreign key, relationship 1:X  
Title - string, length maximum 50  
Body - text  



##Profile Page  

**User**  
Username - min and max length  
Email - passes some basic check for valid email  

**Profile**  
User_ID - foreign key, relationship 1:X  
City_ID - 1:X  
State_ID - 1:X  
Country_ID 1:X  
Age - int, min and max  
Gender_ID - 1:X  

**City**  
State_ID - 1:X  
Name  

**State**
Country_ID - 1:X  
Name  

**Country**  
Name  

**Gender**  
Type?


##Message Board  

**User**  
Email - valid email, unique  
Link Karma - int  
Comment Karma - int  

**Submission**  
Title - string, length min max  
URL - string, valid URL  
Upvotes - int  
Timestamps - DateTime  

**Comments**    
Author_ID - foreign_key, users table, 1:X   
Upvotes - int  
Body - text  
Timestamps - DateTime  
Parent_Comment_ID - can be blank, otherwise direct parent comment, 1:X  
Submission_ID - 1:X  


## Not Amazon.com  

**User**  
Email - valid email, unique  
Phone

**Address**  
User_ID - 1:X  (user can have multiple addresses)  
Street - string  
City_ID - 1:X  
State_ID - 1:X  
Country_ID - 1:X  
Zipcode - valid zipcode  

**City**  
Name  
State_ID - 1:X  

**State**  
Name  
Country_ID - 1:X  

**Country**  
Name  

**Product**  
Title - string  
Description - text  
Price - float, required, can't be 0 ;)  
Stock - int 

**Review**  
Title - string  
Body - text  
Rating - int (number of stars)  
Product_ID - 1:X  
User_ID - 1:X

**Wishlist**  
Title - string  
User_ID - 1:X  

**WishlistsAndProducts (Join Table)**  
Wishlist_ID  
Product_ID  

**Category**  
Name  

**CategoriesAndProducts (Join Table)**  
Category_ID  
Product_ID  

**Order**  
User_ID - 1:X  
Shipment_ID - 1:X  

**ProductsAndOrders (Join Table)**  
Product_ID  
Order_ID  

**Shipment**  
User_ID - 1:X  
Address_ID - 1:X  
Shipped? - Boolean   
Delivered? - Boolean 
Carrier_ID - 1:X  
Tracking Number - unique  

**Carrier**  
Name  
Support_Phone  