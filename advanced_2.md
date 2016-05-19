# Problem

You want to collect analytics data for visitors and logged-in-users who are visiting your website. This includes basic information like page views and more advanced things like link clicks and time on page. You ideally want to tie this information back to a given user if possible. Design the data model for this analytics infrastructure. 

# Solution

## Explanation

Since a user may or may not have an account, using IP addresses is the next best way to identify unique visitors. This of course has caveats, because what if a user is traveling or visiting the site from a friend's computer? So, an IP address can be said to have multiple users. Also, a user can be assumed to have multiple IP addresses. This situation is ripe for a join table.

By using a join table it allows IP address to be associated with many users and users to be associated with many IP addresses. By convention, the table is named with the tables in alphabetical order with a separating underscore.

For the analytics table, storing both the IP and user is neccessary. This is because it is unknown whether the visit will come from a logged in user or just a guest without an account. To DRY up columns, we call the foreign key `entity_id` and then allow ourselves to derive the table type from `entity_type` which will be IP or User. This allows for tying visits to both IP addresses and Users.

Each page would have a row in a pages table. Each link could also be stored in a table. The link would have a `page_id` key because it belongs to a page.

These are concrete representations of existing pages and links. To store tally data it is necessary to create two more tables. This means `page_views` and `link_clicks` tables.

From these tables it is possible to record views and clicks. When a page loads, it is a view. When a link is clicked, it is a click. Each of these events would result in a row being added to the `page_views` table or `link_clicks` table.

A session would be started and if analytics did not exist for that session, they would begin being recorded. These analytics would be associated with an analytics row. The IP address and/or user would be represented in this row by ID.

Later during data analysis, you could query the page views and link clicks associated with a given analytics session and also query analytics sessions associated with a given IP and user. This data could be compiled into a visual representation of the IP's and/or user's usage of the site over time using the timestamp in the analytics table.

## Schema

IPs

- id SERIAL
- address VARCHAR(45)

---

Users

- id SERIAL
- email VARCHAR(255)
- username VARCHAR(32)

---

IPsUsers

- ip_id INTEGER FK
- user_id INTEGER FK

---

Pages

- id SERIAL
- title VARCHAR(255)
- body TEXT

---

Links

- id SERIAL
- name VARCHAR(255)
- href VARCHAR(255)
- page_id INTEGER FK

---

Analytics

- id SERIAL
- created_at TIMESTAMP
- entity_type VARCHAR(255)
- entity_id INTEGER FK

---

PageViews

- id SERIAL
- analytics_id INTEGER
- page_id INTEGER FK

---

LinkClicks

- id SERIAL
- analytics_id INTEGER FK
- link_id INTEGER FK

