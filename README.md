# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

# Basic
# 1.
<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
<!-- Active URL: http://ondras.zarovi.cz/sql/demo/ -->
<sql>
<datatypes db="mysql">
	<group label="Numeric" color="rgb(238,238,170)">
		<type label="Integer" length="0" sql="INTEGER" quote=""/>
	 	<type label="TINYINT" length="0" sql="TINYINT" quote=""/>
	 	<type label="SMALLINT" length="0" sql="SMALLINT" quote=""/>
	 	<type label="MEDIUMINT" length="0" sql="MEDIUMINT" quote=""/>
	 	<type label="INT" length="0" sql="INT" quote=""/>
		<type label="BIGINT" length="0" sql="BIGINT" quote=""/>
		<type label="Decimal" length="1" sql="DECIMAL" re="DEC" quote=""/>
		<type label="Single precision" length="0" sql="FLOAT" quote=""/>
		<type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
	</group>

	<group label="Character" color="rgb(255,200,200)">
		<type label="Char" length="1" sql="CHAR" quote="'"/>
		<type label="Varchar" length="1" sql="VARCHAR" quote="'"/>
		<type label="Text" length="0" sql="MEDIUMTEXT" re="TEXT" quote="'"/>
		<type label="Binary" length="1" sql="BINARY" quote="'"/>
		<type label="Varbinary" length="1" sql="VARBINARY" quote="'"/>
		<type label="BLOB" length="0" sql="BLOB" re="BLOB" quote="'"/>
	</group>

	<group label="Date &amp; Time" color="rgb(200,255,200)">
		<type label="Date" length="0" sql="DATE" quote="'"/>
		<type label="Time" length="0" sql="TIME" quote="'"/>
		<type label="Datetime" length="0" sql="DATETIME" quote="'"/>
		<type label="Year" length="0" sql="YEAR" quote=""/>
		<type label="Timestamp" length="0" sql="TIMESTAMP" quote="'"/>
	</group>
	
	<group label="Miscellaneous" color="rgb(200,200,255)">
		<type label="ENUM" length="1" sql="ENUM" quote=""/>
		<type label="SET" length="1" sql="SET" quote=""/>
		<type label="Bit" length="0" sql="bit" quote=""/>
	</group>
</datatypes><table x="461" y="147" name="course_off">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="course.id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Course" row="id" />
</row>
<row name="date" null="0" autoincrement="0">
<datatype>DATE</datatype>
<default>'NULL'</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="237" y="70" name="roster">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="course_off.id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="course_off" row="id" />
</row>
<row name="student.id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="student" row="id" />
</row>
<row name="date" null="0" autoincrement="0">
<datatype>DATE</datatype>
<default>'NULL'</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="668" y="172" name="Course">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="title" null="0" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>'NULL'</default></row>
<row name="description" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="196" y="250" name="lesson">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="title" null="0" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>'NULL'</default></row>
<row name="description" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="course_off.id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="course_off" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="492" y="10" name="student">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="fname" null="0" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>'NULL'</default></row>
<row name="lname" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>

# 2.
<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
<!-- Active URL: http://ondras.zarovi.cz/sql/demo/ -->
<sql>
<datatypes db="mysql">
	<group label="Numeric" color="rgb(238,238,170)">
		<type label="Integer" length="0" sql="INTEGER" quote=""/>
	 	<type label="TINYINT" length="0" sql="TINYINT" quote=""/>
	 	<type label="SMALLINT" length="0" sql="SMALLINT" quote=""/>
	 	<type label="MEDIUMINT" length="0" sql="MEDIUMINT" quote=""/>
	 	<type label="INT" length="0" sql="INT" quote=""/>
		<type label="BIGINT" length="0" sql="BIGINT" quote=""/>
		<type label="Decimal" length="1" sql="DECIMAL" re="DEC" quote=""/>
		<type label="Single precision" length="0" sql="FLOAT" quote=""/>
		<type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
	</group>

	<group label="Character" color="rgb(255,200,200)">
		<type label="Char" length="1" sql="CHAR" quote="'"/>
		<type label="Varchar" length="1" sql="VARCHAR" quote="'"/>
		<type label="Text" length="0" sql="MEDIUMTEXT" re="TEXT" quote="'"/>
		<type label="Binary" length="1" sql="BINARY" quote="'"/>
		<type label="Varbinary" length="1" sql="VARBINARY" quote="'"/>
		<type label="BLOB" length="0" sql="BLOB" re="BLOB" quote="'"/>
	</group>

	<group label="Date &amp; Time" color="rgb(200,255,200)">
		<type label="Date" length="0" sql="DATE" quote="'"/>
		<type label="Time" length="0" sql="TIME" quote="'"/>
		<type label="Datetime" length="0" sql="DATETIME" quote="'"/>
		<type label="Year" length="0" sql="YEAR" quote=""/>
		<type label="Timestamp" length="0" sql="TIMESTAMP" quote="'"/>
	</group>
	
	<group label="Miscellaneous" color="rgb(200,200,255)">
		<type label="ENUM" length="1" sql="ENUM" quote=""/>
		<type label="SET" length="1" sql="SET" quote=""/>
		<type label="Bit" length="0" sql="bit" quote=""/>
	</group>
</datatypes><table x="300" y="65" name="user">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="username" null="0" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>'NULL'</default></row>
<row name="email" null="0" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>'NULL'</default></row>
<row name="age" null="0" autoincrement="0">
<datatype>SMALLINT</datatype>
<default>NULL</default></row>
<row name="gender" null="0" autoincrement="0">
<datatype>BINARY</datatype>
<default>'NULL'</default></row>
<row name="stateid" null="0" autoincrement="0">
<datatype>CHAR(2)</datatype>
<default>'NULL'</default><relation table="state" row="id" />
</row>
<row name="countryid" null="1" autoincrement="0">
<datatype>CHAR(3)</datatype>
<default>NULL</default><relation table="country" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="778" y="144" name="state">
<row name="id" null="0" autoincrement="0">
<datatype>VARCHAR(2)</datatype>
<default>'NULL'</default></row>
<row name="name" null="0" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>'NULL'</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="808" y="264" name="country">
<row name="id" null="0" autoincrement="0">
<datatype>VARCHAR(3)</datatype>
<default>'NULL'</default></row>
<row name="name" null="0" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>'NULL'</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>

# Intermediate
<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
<!-- Active URL: http://ondras.zarovi.cz/sql/demo/ -->
<sql>
<datatypes db="postgresql">
	<group label="Numeric" color="rgb(238,238,170)">
		<type label="Integer" length="0" sql="INTEGER" re="INT" quote=""/>
		<type label="Small Integer" length="0" sql="SMALLINT" quote=""/>
		<type label="Big Integer" length="0" sql="BIGINT" quote=""/>
		<type label="Decimal" length="1" sql="DECIMAL" re="numeric" quote=""/>
		<type label="Serial" length="0" sql="SERIAL" re="SERIAL4" fk="Integer" quote=""/>
		<type label="Big Serial" length="0" sql="BIGSERIAL" re="SERIAL8" fk="Big Integer" quote=""/>
		<type label="Real" length="0" sql="BIGINT" quote=""/>
		<type label="Single precision" length="0" sql="FLOAT" quote=""/>
		<type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
	</group>

	<group label="Character" color="rgb(255,200,200)">
		<type label="Char" length="1" sql="CHAR" quote="'"/>
		<type label="Varchar" length="1" sql="VARCHAR" re="CHARACTER VARYING" quote="'"/>
		<type label="Text" length="0" sql="TEXT" quote="'"/>
		<type label="Binary" length="1" sql="BYTEA" quote="'"/>
		<type label="Boolean" length="0" sql="BOOLEAN" quote="'"/>
	</group>

	<group label="Date &amp; Time" color="rgb(200,255,200)">
		<type label="Date" length="0" sql="DATE" quote="'"/>
		<type label="Time" length="1" sql="TIME" quote="'"/>
		<type label="Time w/ TZ" length="0" sql="TIME WITH TIME ZONE" quote="'"/>
		<type label="Interval" length="1" sql="INTERVAL" quote="'"/>
		<type label="Timestamp" length="1" sql="TIMESTAMP" quote="'"/>
		<type label="Timestamp w/ TZ" length="0" sql="TIMESTAMP WITH TIME ZONE" quote="'"/>
		<type label="Timestamp wo/ TZ" length="0" sql="TIMESTAMP WITHOUT TIME ZONE" quote="'"/>
	</group>

	<group label="Miscellaneous" color="rgb(200,200,255)">
		<type label="XML" length="1" sql="XML" quote="'"/>
		<type label="Bit" length="1" sql="BIT" quote="'"/>
		<type label="Bit Varying" length="1" sql="VARBIT" re="BIT VARYING" quote="'"/>
		<type label="Inet Host Addr" length="0" sql="INET" quote="'"/>
		<type label="Inet CIDR Addr" length="0" sql="CIDR" quote="'"/>
		<type label="Geometry" length="0" sql="GEOMETRY" quote="'"/>
	</group>
</datatypes><table x="271" y="275" name="user">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="username" null="0" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>'NULL'</default></row>
<row name="password" null="0" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>'NULL'</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="499" y="183" name="post">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="content" null="1" autoincrement="0">
<datatype>TEXT</datatype>
<default>NULL</default></row>
<row name="user_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="user" row="id" />
</row>
<row name="created_at" null="0" autoincrement="0">
<datatype>TIMESTAMP</datatype>
<default>'NULL'</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="659" y="250" name="post_comment">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="post_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="post" row="id" />
</row>
<row name="comment_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="comment" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="543" y="418" name="comment">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="content" null="1" autoincrement="0">
<datatype>TEXT</datatype>
<default>NULL</default></row>
<row name="user_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="user" row="id" />
</row>
<row name="created_at" null="0" autoincrement="0">
<datatype>TIMESTAMP</datatype>
<default>'NULL'</default></row>
<row name="parent_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>


# Advanced
<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
<!-- Active URL: http://ondras.zarovi.cz/sql/demo/ -->
<sql>
<datatypes db="postgresql">
	<group label="Numeric" color="rgb(238,238,170)">
		<type label="Integer" length="0" sql="INTEGER" re="INT" quote=""/>
		<type label="Small Integer" length="0" sql="SMALLINT" quote=""/>
		<type label="Big Integer" length="0" sql="BIGINT" quote=""/>
		<type label="Decimal" length="1" sql="DECIMAL" re="numeric" quote=""/>
		<type label="Serial" length="0" sql="SERIAL" re="SERIAL4" fk="Integer" quote=""/>
		<type label="Big Serial" length="0" sql="BIGSERIAL" re="SERIAL8" fk="Big Integer" quote=""/>
		<type label="Real" length="0" sql="BIGINT" quote=""/>
		<type label="Single precision" length="0" sql="FLOAT" quote=""/>
		<type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
	</group>

	<group label="Character" color="rgb(255,200,200)">
		<type label="Char" length="1" sql="CHAR" quote="'"/>
		<type label="Varchar" length="1" sql="VARCHAR" re="CHARACTER VARYING" quote="'"/>
		<type label="Text" length="0" sql="TEXT" quote="'"/>
		<type label="Binary" length="1" sql="BYTEA" quote="'"/>
		<type label="Boolean" length="0" sql="BOOLEAN" quote="'"/>
	</group>

	<group label="Date &amp; Time" color="rgb(200,255,200)">
		<type label="Date" length="0" sql="DATE" quote="'"/>
		<type label="Time" length="1" sql="TIME" quote="'"/>
		<type label="Time w/ TZ" length="0" sql="TIME WITH TIME ZONE" quote="'"/>
		<type label="Interval" length="1" sql="INTERVAL" quote="'"/>
		<type label="Timestamp" length="1" sql="TIMESTAMP" quote="'"/>
		<type label="Timestamp w/ TZ" length="0" sql="TIMESTAMP WITH TIME ZONE" quote="'"/>
		<type label="Timestamp wo/ TZ" length="0" sql="TIMESTAMP WITHOUT TIME ZONE" quote="'"/>
	</group>

	<group label="Miscellaneous" color="rgb(200,200,255)">
		<type label="XML" length="1" sql="XML" quote="'"/>
		<type label="Bit" length="1" sql="BIT" quote="'"/>
		<type label="Bit Varying" length="1" sql="VARBIT" re="BIT VARYING" quote="'"/>
		<type label="Inet Host Addr" length="0" sql="INET" quote="'"/>
		<type label="Inet CIDR Addr" length="0" sql="CIDR" quote="'"/>
		<type label="Geometry" length="0" sql="GEOMETRY" quote="'"/>
	</group>
</datatypes><table x="650" y="214" name="order">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="user_id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="users" row="id" />
</row>
<row name="shipment_id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="shipments" row="id" />
</row>
<row name="created_at" null="1" autoincrement="0">
<datatype>TIMESTAMP</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="560" y="71" name="order_contents">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="order_id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="order" row="id" />
</row>
<row name="product_id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="products" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="378" y="170" name="products">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="name" null="0" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>'NULL'</default></row>
<row name="description" null="0" autoincrement="0">
<datatype>TEXT</datatype>
<default>'NULL'</default></row>
<row name="price" null="1" autoincrement="0">
<datatype>DECIMAL</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="495" y="347" name="users">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="username" null="0" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>'NULL'</default></row>
<row name="password" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="fname" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="lname" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="808" y="255" name="shipments">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="address" null="0" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>'NULL'</default></row>
<row name="state_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="city_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="zip" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="created_at" null="1" autoincrement="0">
<datatype>TIMESTAMP</datatype>
<default>NULL</default></row>
<row name="shipment_date" null="1" autoincrement="0">
<datatype>DATE</datatype>
<default>NULL</default></row>
<row name="delivery_date" null="1" autoincrement="0">
<datatype>DATE</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>

