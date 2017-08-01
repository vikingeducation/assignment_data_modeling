Eric and Stephanie

# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

1.
//Goals: A user should be able to identify different courses
  // Specific lessons should be associated with their course
Courses: id, title, description

Lessons: id[integer], title[string, max=255], body[text, no limit], course_id (foreign key)[integer]

A course has many lessons, a lesson belongs to one course



2.
//Goals:
//Profile information should be associated with a particular user
//Profile should contain demographic info

// (We could pull state info into its own table for data integrity purposes, but eh)

Users: id[integer], username[string, max=31], email[string, max=63]

Profiles: city[string max=63], state[string, 2 chars], country[string, max=63], age[integer, max=130], gender[string, 1 char], user_id (foreign key)[integer]

A user has one profile, a profile belongs to one user




3.
//Goals:
//Users can make posts and comments
//Every comment is associated with a post
//Comments should be able to identify their place in the hierarchy
//Comment can nest indefinitely


Users: id[integer], username[string, max=31]

Posts: id[integer], title[string, max=255], body[text, max=2047], user_id (foreign key)[integer]

Comments: id[integer], body[text, max=2047], user_id (foreign key)[integer], post_id (foreign_key)[integer], parent_comment_id[integer]


A user has many posts, a post has one user; a user has many comments, a comment has one user

A post has many comments, a comment has one post

A comment has many comments, a comment has one parent comment?



4.
//Goals:
//We need to be able to determine the address of a shipment
//Need to be able to determine if an order is fulfilled
//Users should be able to track their order/shipment status
//Users should be able to access their order history
//Links to funny cat pictures/memes
//Free Chuck Norris jokes with every order
//Inform a user of out-of-stock products / make sure their payment doesn't go through for it
//Users should be able cancel their orders

Users: id[integer], username[string, max=255], first_name[string, max=31], last_name[string, max=31], street address[string, max=255], city[string, max=63], state[string, 2 chars], country[string, max=63], zip_code[integer, 5 digits], active[boolean]

Products: id[integer], name[string, max=127], description[text, max=1023], price[float], num_in_stock[integer]

Product/Order Join: order_id[integer], product_id[integer]

Orders: id[integer], user_id (foreign key)[integer], order_status[string, 1 char]

Product/Shipment Join: product_id[integer], shipment_id[integer]

Shipments: id[integer], order_id (foreign key)[integer], shipping_status[string, 1 char]

An order has many products, a product has many orders;
A user has many orders, an order has one user;
An order has many shipments, a shipment has one order;
A shipment has many products, a product has many shipments

If we do completely delete a user, change user_id in Orders table to dummy user account?


5.
goals:
  //tracking popularity of site features(?)
  //tracking common sources to our site
  //tracking the peak usage times
  //Get data about average session times
  //Track user flow through the site
  //Track how often a particular user comes back to the site (on average)
  //Track the percentage of visitors that become users
  //Track how many pages people typically view in a session


visitors: id[integer]

users: id[integer], username[string, max=31], visitor_id (foreign_key)[integer]

pages: id[integer], url[string, max=255], category/site-section[string, max=127]

page views (attrs): id[integer], page_id (foreign_key)[integer], visitor_id (foreign_key)[integer], session_id(foreign key)[integer], source_url[string, max=255], time[datetime]  

links: id[integer], page_id(foreign_key)[integer], href[string, max=255]

link_clicks: id[integer], page_view_id(foreign_key)[integer], link_id(foreign_key)[integer], time[datetime]

sessions: id[integer], visitor_id(foreign_key)[integer], start_time[datetime], end_time[datetime]

A user is one visitor, a visitor may be one or zero users

A visitor has many sessions, a session has one visitor
A visitor has many page views, a page view has one visitor

A page has many page views, a page view has one page
A page has many links, a link has one page

page views can have many link clicks, link click belong to one page
a session has many page views, a page view has one session






///
