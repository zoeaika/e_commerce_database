# E-Commerce Database

This README provides an overview of the database tables for the e-commerce project, designed to manage products, customers, orders, and payments.

## Tables Overview

1. **Products**: 
created the table with (id, product_name, price)

2. **product_Category**: Organizes products (`category_id`, `name`, etc.).

3. **brand**: created brand table

4. **product_image**: containes the URL for the product images.

5. **Product_Categories** (Join Table)
  Associates products with multiple categories (many-to-many relationship).
  Columns: product_id, category_id

6. **Payments**: Stores payment details (`payment_id`, `order_id`, `amount`, etc.).

## Notes
- Optimize foreign key indexing for performance.
- Use appropriate data types for columns.

