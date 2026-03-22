## Anomaly Analysis
## Insert Anomaly
In the current table structure, a new product cannot be added unless an order exists for that product.

Example from the dataset: Columns such as product_id, product_name, category, and unit_price only appear when an order is recorded. If the company wants to add a new product but no order has been placed yet, it cannot be inserted without creating an order because the table also requires fields like order_id, customer_id, and order_date.

This creates an Insert Anomaly because product information depends on order data.

## Update Anomaly
Customer information is repeated in multiple rows for every order.

Example from the dataset: Columns such as customer_id, customer_name, customer_email, and customer_city appear in many rows. If a customer changes their city, every row containing that customer must be updated. If one row is missed, inconsistent data will appear in the table.

This creates an Update Anomaly.

## Delete Anomaly
Product information is stored together with order information.

Example from the dataset: Columns product_id, product_name, category, and unit_price are stored in the same row as order_id. If the only order containing a specific product is deleted, the product information will also be lost from the table.

This creates a Delete Anomaly.
