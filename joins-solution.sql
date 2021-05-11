 - Get all customers and their addresses.
SELECT * FROM addresses
JOIN customers ON customers.id = addresses.customer_id;

 - Get all orders and their line items (orders, quantity and product).
SELECT orders.id, line_items.quantity, products.description  FROM orders
JOIN line_items ON orders.id = line_items.order_id
JOIN products ON products.id = line_items.product_id;

 - Which warehouses have cheetos?
 - Which warehouses have diet pepsi?
 - Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
 - How many customers do we have?
 - How many products do we carry?
 - What is the total available on-hand quantity of diet pepsi?
