# assignment_data_modeling
Mmmmm.... dataaaaa....

*Include your ERM modeling "pseudocode" in the space below*

Aaron Saloff's Solution

To view the solution tables, check out the screenshots folder in the root directory.

### Basic 1:

Simple 1:X relationship

### Intermediate 1:

- Users to comments is a 1:M relationship
- Users to links is a 1:M relationship
- Links to comments is a 1:M relationship
- Comments to comments is a 1:M relationship

A comment can have many other comments, so when getting the 1st level comments on a link, one might find all comments with the link_id and where the comment_id is NULL. Then, when getting comments on comments, one would check for comments where the comment_id is the parent comment. It would be important to validate that a comments comment_id cannot ne itself.

### Advanced 1:

- Products to orders is a M:M relationship and therefore requires a join table 'order_products'
- Users to orders is 1:M (we always hope for reapeat customers!)
- An order can be split up to different shipments and a shipment can have many orders so orders to shipments is also a M:M relationship. It's join table is 'shipment_orders'
