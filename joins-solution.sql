 -- Get all customers and their addresses.
SELECT * FROM addresses
JOIN customers ON customers.id = addresses.customer_id;

 -- Get all orders and their line items (orders, quantity and product).
SELECT orders.id, line_items.quantity, products.description  FROM orders
JOIN line_items ON orders.id = line_items.order_id
JOIN products ON products.id = line_items.product_id;

 -- Which warehouses have cheetos?
SELECT warehouse.warehouse FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON products.id = warehouse_product.product_id
WHERE products.id = 5;
 
 -- Which warehouses have diet pepsi?
SELECT warehouse.warehouse FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON products.id = warehouse_product.product_id
WHERE products.id = 6;

 -- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT COUNT(orders), customers.first_name, customers.last_name FROM customers
JOIN addresses ON addresses.customer_id = customers.id
JOIN orders ON orders.address_id = addresses.id
GROUP BY customers.last_name, customers.first_name;

 -- How many customers do we have?
SELECT COUNT(*) FROM customers;

 -- How many products do we carry?
SELECT COUNT(*) FROM products;

 -- What is the total available on-hand quantity of diet pepsi?
SELECT SUM(warehouse_product.on_hand) FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON products.id = warehouse_product.product_id
WHERE products.id = 6;
