# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*
Ann Allan
<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
<!-- Active URL: http://ondras.zarovi.cz/sql/demo/ -->
 <!-- Basic 1 -->
</datatypes><table x="12" y="8" name="Students">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="first_name" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="last_name" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="street_address" null="0" autoincrement="0">
<datatype>VARCHAR(64)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="city" null="1" autoincrement="0">
<datatype>VARCHAR(64)</datatype>
<default>NULL</default></row>
<row name="state" null="1" autoincrement="0">
<datatype>CHAR(2)</datatype>
<default>NULL</default></row>
<row name="zip" null="0" autoincrement="0">
<datatype>CHAR(5)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="country" null="1" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="StudentID">
<part>id</part>
</key>
<comment>many to many Courses</comment>
</table>
<table x="344" y="13" name="Courses">
<row name="id" null="0" autoincrement="1">
<datatype>INTEGER</datatype>
<comment>Cannot be null</comment>
</row>
<row name="title" null="0" autoincrement="0">
<datatype>VARCHAR(64)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="description" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>many to many Students; one to many Lessons</comment>
</table>
<table x="147" y="11" name="StudentsCourses">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_Students" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<relation table="Students" row="id" />
<comment>Cannot be null</comment>
</row>
<row name="id_Courses" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<relation table="Courses" row="id" />
<comment>Cannot be null</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<key type="INDEX" name="">
</key>
<key type="INDEX" name="">
</key>
</table>
<table x="486" y="14" name="Lessons">
<row name="id" null="0" autoincrement="1">
<datatype>INTEGER</datatype>
<comment>Cannot be null</comment>
</row>
<row name="id_Courses" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<relation table="Courses" row="id" />
<comment>Cannot be null</comment>
</row>
<row name="title" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="body_text" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>many to one with Courses</comment>
</table>


<!-- Basic 2 -->
<table x="624" y="15" name="Users">
<row name="id" null="0" autoincrement="1">
<datatype>INTEGER</datatype>
<comment>Cannot be null</comment>
</row>
<row name="user_name" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="email" null="0" autoincrement="0">
<datatype>VARCHAR(64)</datatype>
<comment>Cannot be null</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>one to one with Profiles</comment>
</table>
<table x="755" y="14" name="Profiles">
<row name="id" null="0" autoincrement="1">
<datatype>INTEGER</datatype>
<comment>Cannot be null</comment>
</row>
<row name="id_Users" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<relation table="Users" row="id" />
<comment>Cannot be null</comment>
</row>
<row name="city" null="1" autoincrement="0">
<datatype>VARCHAR(60)</datatype>
<default>NULL</default></row>
<row name="state" null="1" autoincrement="0">
<datatype>CHAR(2)</datatype>
<default>NULL</default></row>
<row name="country" null="1" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<default>NULL</default></row>
<row name="age" null="1" autoincrement="0">
<datatype>VARCHAR(3)</datatype>
<default>NULL</default></row>
<row name="gender" null="1" autoincrement="0">
<datatype>VARCHAR(6)</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>one to one with Users</comment>
</table>


<!-- Intermediate -->
<table x="897" y="13" name="Users">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="user_name" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<comment>Cannot be null</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>one to many with Links; one to many with Comments; one to many with Response_Comments</comment>
</table>
<table x="901" y="85" name="Links">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="author" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<relation table="Users" row="id" />
<comment>Cannot be null</comment>
</row>
<row name="post_date" null="0" autoincrement="0">
<datatype>DATE</datatype>
<comment>Cannot be null</comment>
</row>
<row name="title" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="body" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>many to one with Users; one to many with Comments</comment>
</table>
<table x="1024" y="10" name="Comments">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="author" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<relation table="Users" row="id" />
<comment>Cannot be null</comment>
</row>
<row name="post_date" null="0" autoincrement="0">
<datatype>DATE</datatype>
<comment>Cannot be null</comment>
</row>
<row name="title" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="body" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>many to one with Users; many to one with Links; one to many with Response_Comments</comment>
</table>
<table x="1041" y="162" name="Response_Comments">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="author" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<relation table="Users" row="id" />
<comment>Cannot be null</comment>
</row>
<row name="post_date" null="0" autoincrement="0">
<datatype>DATE</datatype>
<comment>Cannot be null</comment>
</row>
<row name="title" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="body" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>many to one with Comments</comment>
</table>


<!-- Advanced 1 and 2 -->
<table x="336" y="545" name="Users">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="user_name" null="0" autoincrement="0">
<datatype>VARCHAR(60)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="password" null="0" autoincrement="0">
<datatype>VARCHAR(16)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="primo" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>NULL</default></row>
<row name="first_name" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="last_name" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="street_address" null="0" autoincrement="0">
<datatype>VARCHAR(60)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="city" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="state" null="0" autoincrement="0">
<datatype>CHAR(2)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="zip_code" null="0" autoincrement="0">
<datatype>CHAR(5)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="email" null="0" autoincrement="0">
<datatype>VARCHAR(60)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="open_order" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>NULL</default></row>
<row name="inactive_7_years" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>many to many with Products; many to many with Cart_Items, one to many with Orders; many to many with Shipments; one to one with Logged_In_Profile; one to one with Preferences; one to one with Digital_Content; many to many with Payment_Options</comment>
</table>
<table x="256" y="295" name="Products">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="sku" null="0" autoincrement="0">
<datatype>VARCHAR(40)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="name" null="1" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<default>NULL</default></row>
<row name="description" null="1" autoincrement="0">
<datatype>VARCHAR(60)</datatype>
<default>NULL</default></row>
<row name="manufacturer" null="1" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<default>NULL</default></row>
<row name="price" null="0" autoincrement="0">
<datatype>DOUBLE(8)</datatype>
<comment>Cannot be null</comment>
</row>
<row name="primo_eligible" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>NULL</default></row>
<row name="inventory" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>one to many with Cart_Items</comment>
</table>
<table x="4" y="318" name="Product_Reviews">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_Products" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Products" row="id" />
</row>
<row name="rating" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="date" null="1" autoincrement="0">
<datatype>DATE</datatype>
<default>NULL</default></row>
<row name="comment" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="author" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Users" row="id" />
<comment>Must be logged in user</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>many to one with Products</comment>
</table>
<table x="479" y="305" name="Orders">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_Products" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Products" row="id" />
</row>
<row name="id_Users" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Users" row="id" />
</row>
<row name="shipped_date" null="0" autoincrement="0">
<datatype>DATE</datatype>
<comment>Cannot be null</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>many to one with Users; one to many with Products; many to one with Shipments</comment>
</table>
<table x="715" y="336" name="Shippments">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="tracking" null="1" autoincrement="0">
<datatype>VARCHAR(60)</datatype>
<default>NULL</default></row>
<row name="id_Orders" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Orders" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>one to many orders</comment>
</table>
<table x="716" y="494" name="Logged_in_Profiles">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_Users" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Users" row="id" />
</row>
<row name="page_views" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="link_clicks" null="1" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<default>NULL</default></row>
<row name="active_time" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>one to one with Users</comment>
</table>
<table x="1000" y="499" name="Visitor_Profiles">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="page_views" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="link_clicks" null="1" autoincrement="0">
<datatype>VARCHAR(60)</datatype>
<default>NULL</default></row>
<row name="active_time" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="68" y="583" name="Preferences">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_Users" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Users" row="id" />
</row>
<row name="daily_email" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>NULL</default></row>
<row name="weekly_email" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>NULL</default></row>
<row name="text_msgs" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>NULL</default></row>
<row name="phone_calls" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>NULL</default></row>
<row name="primo_exclusives" null="1" autoincrement="0">
<datatype>BINARY</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>one to one with Users</comment>
</table>
<table x="505" y="751" name="Stored_Payment_Options">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_Users" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Users" row="id" />
</row>
<row name="Amazon_Visa" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Amazon_Rewards" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Checking" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Gift_Card" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="new field" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Visa" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="MasterCard" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Discover" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="AmEx" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>one to one with Users</comment>
</table>
<table x="894" y="735" name="Digital_Content">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_Users" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Users" row="id" />
</row>
<row name="Amazon_Drive" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Apps" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Games" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Software" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Music" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Videos" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>one to one with Users</comment>
</table>
</sql>
