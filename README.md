Andrew and Alex

# assignment_data_modeling
Mmmmm.... dataaaaa....


Learning Platform
======================================================
Course
	Structure:
		id: unsigned int(11) primary key auto_increment
		title: varchar(255)
		desc: text
	hasMany:
		Lesson

Lessson
	Structure:
		id: unsigned int(11) primary key auto_increment
		title: varchar(255)
		desc: text
		course_id: unsigned int(11)
======================================================


Profile Page For New User on Login Site
======================================================
User
	Structure:
		id: unsigned int(11) primary key auto_increment
		username: varchar(64)
		email: varchar(255)
	hasOne:
		Profile

Profile
	Structure:
		id: unsigned int(11) primary key auto_increment
		first_name: varchar(64)
		last_name: varchar(64)
		telephone: varchar(15)
		gender: boolean
		zipcode: unsigned  int(11)
		city_id: unsigned int(11)
		state_id: unsigned int(11)
		country_id: unsigned int(11)
		user_id: unsigned int(11)
		UNIQUE (user_id)
	hasOne:
		City, State, Country
	belongsTo:
		User

City
	Structure:
		id: unsigned int(11) primary key auto_increment
		name: unsigned varchar(255)
		belongsTo:
			Profile

State
	Structure:
		id: unsigned int(11) primary key auto_increment
		name: varchar(255)
		abbr: varchar(2)
	belongsTo:
		Profile

Country
	Structure:
		id: unsigned int(11) primary key auto_increment
		name: varchar(255)
	belongsTo:
		Profile
======================================================


Message Board like Hacker News
======================================================
User
	Structure:
		id: unsigned int(11) primary key auto_increment
		username: varchar(255)
	hasMany:
		Post, Comment

Post
	Structure:
		id: unsigned int(11) primary key auto_increment
		title: varchar(255)
		body: text
		gmt_created: unsigned bigint
		user_id: unsigned int(11)
	hasMany:
		Comment
	belongsTo:
		User

Comment
	Structure:
		id: unsigned int(11) primary key auto_increment
		body: text
		gmt_created: unsigned int(11)
		user_id: unsigned int(11)
		post_id: unsigned int(11)
	hasAndBelongsToMany:
		Comment
	belongsTo:
		User, Post

CommentsComment
	Structure:
		comment_id: unsigned int(11)
		comments_comment_id: unsigned int(11)
======================================================


E-Commerce Site
======================================================
User
	Structure:
		id: unsigned int(11) primary key auto_increment
		username: varchar(255)
		password: varchar(255)
		type_id: unsigned int(11)
	hasMany:
		Product, Order
	hasOne:
		Cart, UserType

UserType (LOOKUP)
	Structure:
		id: unsigned int(11) primary key auto_increment
		name: varchar(255)
	belongsTo:
		User

Product
	Structure:
		id: unsigned int(11) primary key auto_increment
		name: varchar(255)
		des: text
		user_id: unsigned int(11)
	hasAndBelongsToMany:
		Order, Cart, Shipment
	belongsTo:
		User

ProductsCart
	Structure:
		id: unsigned int(11) primary key auto_increment
		quantity: unsigned int(4)
		product_id: unsigned int(11)
		cart_id: unsigned int(11)

ProductsOrder
	Structure:
		id: unsigned int(11) primary key auto_increment
		product_id: unsigned int(11)
		order_id: unsigned int(11)

ProductsShipment
	Structure:
		id: unsigned int(11) primary key auto_increment
		product_id: unsigned int(11)
		shipment_id: unsigned int(11)

Cart
	Structure:
		id: unsigned int(11) primary key auto_increment
		user_id: unsigned int(11)
		order_id: unsigned int(11)
	hasAndBelongsToMany:
		Product
	belongsTo:
		User, Order

Order
	Structure:
		id: unsigned int(11) primary key auto_increment
		order_number: unsigned int(11)  // Reference for user
		user_id: unsigned int(11)
	hasAndBelongsToMany:
		Product
	hasMany:
		Shipment
	hasOne:
		Cart

Shipment
	Structure:
		id: unsigned int(11) primary key auto_increment
		tracking_number: unsigned bigint
		carrier_id: unsigned int(11)
		order_id: unsigned int(11)
	hasAndBelongsToMany:
		Product
	hasOne:
		Carrier

Carrier (LOOKUP)
	Structure:
		id: unsigned int(11) primary key auto_increment
		name: varchar(255)
	belongsTo:
		Shipment
