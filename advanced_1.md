# Problem

You want to build an e-commerce site like a very simplified Amazon.com. You'll need to keep track of products, users, orders, shipments and all the bits and pieces necessary to glue them all together. Design the data model for this web app.

# Solution

## Explanation

This solution profits from the same location normalization as the `basic_2` solution.

This solution also makes an assumption that shipments contain many orders. Also that a shipment has it's own destination and that a single order has a separate more specific destination (the user's address).

A user selects products from the site. Upon submitting an order, each product is mapped to an `ordered_item` and the full order is mapped to a row in the `order` table.

The `order_status` could symbolize many things like, paid, pending payment, delivered etc...

A shipment may contain many orders so a `shipment_id` is added to the order table. A shipment may also be arriving in a city or state, but since it contains so many orders it won't be the specific address of the user. So it makes sense to have a separate table for destinations. This allows destinations to profit from the same location normalization.

When a shipment arrives at it's destination, each order then is associated with a user. Each user has a shipping address. It is also common for a site to separate billing and shipping addresses, so a table is created for each. Now each order can be delivered to the specific user address.

To further avoid duplication, since a shipment destination, user billing address and user shipping address all are locations, they can be linked to an addresses table.

Once delivered, the status for the shipment and order can both be set.

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
- order_status_id INTEGER
- user_id INTEGER FK
- shipment_id INTEGER FK

---

OrderItem

- id SERIAL
- order_id INTEGER
- product_id INTEGER FK

---

OrderStatus

- id SERIAL
- name VARCHAR(32)

---

Shipments

- id SERIAL
- destination_id INTEGER FK
- shipment_status_id INTEGER FK

---

ShipmentStatus

- id SERIAL
- name VARCHAR(32)

---

Addresses

- id SERIAL
- apartment VARCHAR(32)
- street VARCHAR(32)
- city_id INTEGER FK
- state_id INTEGER FK
- zip_code_id INTEGER FK



