# Problem

You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app.

# Solution

## Explanation

This solution profits from the same location normalization as the `basic_2` solution.

This solution also makes an assumption that shipments contain many orders. Also that a shipment has it's own destination and that a single order has a separate more specific destination (the user's address).

A user selects products from the site. Upon submitting an order, each product is mapped to an `ordered_item` and the full order is mapped to a row in the `order` table.

Determining the order status can be done by it's `checkout_date` and `delivery_date`. When an order is checked out the `checkout_date` is set. This means the order is now a placed order. When the order arrives at it's final destination the `delivery_date` is set making it delivered.

A shipment may contain many orders so a `shipment_id` is added to the order table. A shipment may also be arriving in a city or state, but since it contains so many orders it won't be the specific address of the user. So it makes sense to have a separate table for destinations. This allows destinations to profit from the same location normalization.

When a shipment arrives at it's destination it's `delivery_date` is set. This means it is now delivered. Also each order in the shipment is associated with a user. Each user has a shipping address.

It is also common for a site to separate billing and shipping addresses, so a column is created for each. Now each order can be delivered to the specific user address.

To further avoid duplication, since a shipment destination, user billing address and user shipping address all are locations, they can be linked to an addresses table.

It should also be noted that the shipment and order both have destinations that can be linked to completely separated records in the addresses table. This means once an order is checked out and when a shipment is sent, a new address record can be created for both. This allows users to change their address, yet still retain a sustained destination for the order and shipment.

## Schema

Users

- id SERIAL
- email VARCHAR(255)
- username VARCHAR(32)
- profile_id INTEGER FK

---

Profiles

- id SERIAL
- billing_address_id INTEGER FK
- shipping_address_id INTEGER FK

---

Cities

- id SERIAL
- name VARCHAR(32)
- state_id INTEGER FK

---

States

- id SERIAL
- name VARCHAR(32)
- country_id INTEGER FK

---

Countries

- id SERIAL
- name VARCHAR(32)

---

ZipCodes

- id SERIAL
- code VARCHAR(32)
- state_id INTEGER FK

---

Products

- id SERIAL
- name VARCHAR(32)
- description TEXT
- units INTEGER
- sku_id INTEGER UNIQUE FK

---

SKUs

- id SERIAL
- number VARCHAR(32)

---

Orders

- id SERIAL
- created_at TIMESTAMP
- checkout_date DATETIME
- delivery_date DATETIME
- user_id INTEGER FK
- destination_id INTEGER FK
- shipment_id INTEGER FK

---

OrderItem

- id SERIAL
- order_id INTEGER
- product_id INTEGER FK

---

Shipments

- id SERIAL
- delivery_date DATETIME
- destination_id INTEGER FK

---

Addresses

- id SERIAL
- line_1 VARCHAR(32)
- line_2 VARCHAR(32)
- zip_code_id INTEGER FK



