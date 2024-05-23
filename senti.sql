use wow;
-- Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    registration_date DATE
);

-- Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Order_Items table
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Reviews table
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    review_text varchar(50),
    review_date DATE,
    rating INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Sentiment_Analysis table
CREATE TABLE Sentiment_Analysis (
    sentiment_id INT PRIMARY KEY,
    review_id INT,
    positive_sentiment_score FLOAT,
    negative_sentiment_score FLOAT,
    overall_sentiment VARCHAR(20),
    FOREIGN KEY (review_id) REFERENCES Reviews(review_id)
);

-- inserting values customer table
INSERT INTO Customers (customer_id, customer_name, email, registration_date)
VALUES
    (1, 'John Doe', 'john@example.com', '2024-01-01'),
    (2, 'Jane Smith', 'jane@example.com', '2024-01-05'),
    (3, 'David Johnson', 'david@example.com', '2024-01-10'),
    (4, 'Emily Brown', 'emily@example.com', '2024-01-15'),
    (5, 'Michael Wilson', 'michael@example.com', '2024-01-20'),
    (6, 'Jennifer Martinez', 'jennifer@example.com', '2024-01-25'),
    (7, 'Christopher Anderson', 'christopher@example.com', '2024-01-30'),
    (8, 'Amanda Taylor', 'amanda@example.com', '2024-02-05'),
    (9, 'Daniel Thomas', 'daniel@example.com', '2024-02-10'),
    (10, 'Sarah Garcia', 'sarah@example.com', '2024-02-15'),
    (11, 'Matthew Rodriguez', 'matthew@example.com', '2024-02-20'),
    (12, 'Laura Martinez', 'laura@example.com', '2024-02-25'),
    (13, 'Justin Hernandez', 'justin@example.com', '2024-03-01'),
    (14, 'Rebecca Garcia', 'rebecca@example.com', '2024-03-05'),
    (15, 'Nathan Martinez', 'nathan@example.com', '2024-03-10'),
    (16, 'Kimberly Lopez', 'kimberly@example.com', '2024-03-15'),
    (17, 'Andrew Perez', 'andrew@example.com', '2024-03-20'),
    (18, 'Stephanie Gonzalez', 'stephanie@example.com', '2024-03-25'),
    (19, 'Jonathan Hernandez', 'jonathan@example.com', '2024-03-30'),
    (20, 'Melissa Gonzalez', 'melissa@example.com', '2024-04-05');

-- inserting values product table
INSERT INTO Products (product_id, product_name, category, price)
VALUES
    (1, 'Graphic Tee', 'Men', 19.99),
    (2, 'V-Neck Tee', 'Women', 14.99),
    (3, 'Long Sleeve Tee', 'Men', 24.99),
    (4, 'Tank Top', 'Women', 12.99),
    (5, 'Polo Shirt', 'Men', 29.99),
    (6, 'Crop Top', 'Women', 16.99),
    (7, 'Hoodie', 'Men', 34.99),
    (8, 'Sweatshirt', 'Women', 27.99),
    (9, 'Ringer Tee', 'Men', 22.99),
    (10, 'Tie-Dye Tee', 'Women', 18.99),
    (11, 'Cargo Shorts', 'Men', 39.99),
    (12, 'Denim Skirt', 'Women', 32.99),
    (13, 'Chino Pants', 'Men', 49.99),
    (14, 'Maxi Dress', 'Women', 54.99),
    (15, 'Track Pants', 'Men', 29.99),
    (16, 'Leggings', 'Women', 24.99),
    (17, 'Button-Down Shirt', 'Men', 44.99),
    (18, 'Blouse', 'Women', 34.99),
    (19, 'Cargo Pants', 'Men', 42.99),
    (20, 'Sundress', 'Women', 39.99);

-- inserting values orders table
INSERT INTO Orders (order_id, customer_id, order_date)
VALUES
    (1, 1, '2024-01-01'),
    (2, 2, '2024-01-05'),
    (3, 3, '2024-01-10'),
    (4, 4, '2024-01-15'),
    (5, 5, '2024-01-20'),
    (6, 6, '2024-01-25'),
    (7, 7, '2024-01-30'),
    (8, 8, '2024-02-05'),
    (9, 9, '2024-02-10'),
    (10, 10, '2024-02-15'),
    (11, 11, '2024-02-20'),
    (12, 12, '2024-02-25'),
    (13, 13, '2024-03-01'),
    (14, 14, '2024-03-05'),
    (15, 15, '2024-03-10'),
    (16, 16, '2024-03-15'),
    (17, 17, '2024-03-20'),
    (18, 18, '2024-03-25'),
    (19, 19, '2024-03-30'),
    (20, 20, '2024-04-05');

-- inserting values order_items table
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, unit_price)
VALUES
    (1, 1, 1, 2, 19.99),
    (2, 2, 2, 1, 14.99),
    (3, 3, 3, 3, 24.99),
    (4, 4, 4, 2, 12.99),
    (5, 5, 5, 1, 29.99),
    (6, 6, 6, 1, 16.99),
    (7, 7, 7, 2, 34.99),
    (8, 8, 8, 1, 27.99),
    (9, 9, 9, 3, 22.99),
    (10, 10, 10, 2, 18.99),
    (11, 11, 11, 1, 39.99),
    (12, 12, 12, 2, 32.99),
    (13, 13, 13, 1, 49.99),
    (14, 14, 14, 1, 54.99),
    (15, 15, 15, 2, 29.99),
    (16, 16, 16, 2, 24.99),
    (17, 17, 17, 1, 44.99),
    (18, 18, 18, 1, 34.99),
    (19, 19, 19, 2, 42.99),
    (20, 20, 20, 1, 39.99);

-- inserting values reviews table
INSERT INTO Reviews (review_id, customer_id, product_id, review_text, review_date, rating)
VALUES
    (1, 1, 1, 'Great quality shirt!', '2024-01-02', 5),
    (2, 2, 2, 'Love the fit!', '2024-01-06', 4),
    (3, 3, 3, 'Sleeves are too long.', '2024-01-11', 3),
    (4, 4, 4, 'Comfortable and stylish.', '2024-01-16', 5),
    (5, 5, 5, 'Runs a bit large.', '2024-01-21', 4),
    (6, 6, 6, 'Perfect for summer!', '2024-01-26', 5),
    (7, 7, 7, 'Hoodie is too thin.', '2024-01-31', 2),
    (8, 8, 8, 'Warm and cozy.', '2024-02-06', 4),
    (9, 9, 9, 'Great vintage look.', '2024-02-11', 5),
    (10, 10, 10, 'Colors are vibrant!', '2024-02-16', 4),
    (11, 11, 11, 'Very comfortable shorts.', '2024-02-21', 4),
    (12, 12, 12, 'Nice quality denim skirt.', '2024-02-26', 5),
    (13, 13, 13, 'Good fit, but fabric wrinkles easily.', '2024-03-02', 3),
    (14, 14, 14, 'Beautiful dress, perfect for events.', '2024-03-06', 5),
    (15, 15, 15, 'Great for workouts.', '2024-03-11', 4),
    (16, 16, 16, 'Love these leggings!', '2024-03-16', 5),
    (17, 17, 17, 'Nice shirt for casual wear.', '2024-03-21', 4),
    (18, 18, 18, 'Comfortable blouse.', '2024-03-26', 4),
    (19, 19, 19, 'Lots of pockets, very practical.', '2024-03-31', 4),
    (20, 20, 20, 'Beautiful sundress.', '2024-04-06', 5);

-- Insert values into sentiment_analysis table
INSERT INTO Sentiment_Analysis (sentiment_id, review_id, positive_sentiment_score, negative_sentiment_score, overall_sentiment)
VALUES
    (1, 1, 0.8, 0.2, 'Positive'),
    (2, 2, 0.7, 0.3, 'Positive'),
    (3, 3, 0.4, 0.6, 'Negative'),
    (4, 4, 0.9, 0.1, 'Positive'),
    (5, 5, 0.6, 0.4, 'Positive'),
    (6, 6, 0.85, 0.15, 'Positive'),
    (7, 7, 0.3, 0.7, 'Negative'),
    (8, 8, 0.75, 0.25, 'Positive'),
    (9, 9, 0.8, 0.2, 'Positive'),
    (10, 10, 0.7, 0.3, 'Positive'),
    (11, 11, 0.75, 0.25, 'Positive'),
    (12, 12, 0.9, 0.1, 'Positive'),
    (13, 13, 0.5, 0.5, 'Neutral'),
    (14, 14, 0.85, 0.15, 'Positive'),
    (15, 15, 0.8, 0.2, 'Positive'),
    (16, 16, 0.9, 0.1, 'Positive'),
    (17, 17, 0.7, 0.3, 'Positive'),
    (18, 18, 0.75, 0.25, 'Positive'),
    (19, 19, 0.6, 0.4, 'Positive'),
    (20, 20, 0.85, 0.15, 'Positive');
    
desc customers;
desc products;
desc orders;
desc order_items;
desc reviews;
desc sentiment_analysis;
         
    select * from customers;
    select * from Products ;
    select * from Orders;
    select * from Order_Items;
    select * from Reviews;
    select * from Sentiment_Analysis ;
    
 
-- SUB_QUERIES
-- This subquery : ok
SELECT 
    p.category,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM 
    Products p
INNER JOIN 
    Order_Items oi ON p.product_id = oi.product_id
GROUP BY 
    p.category;

  -- This subquery retrieves customers who have ordered the most expensive product, which can provide insights into high-value customers. ok 
   SELECT 
    c.customer_id,
    c.customer_name
FROM 
    Customers c
WHERE 
    c.customer_id IN (SELECT 
                         o.customer_id
                      FROM 
                         Orders o
                      INNER JOIN 
                         Order_Items oi ON o.order_id = oi.order_id
                      WHERE 
                         oi.unit_price = (SELECT 
                                              MAX(unit_price) 
                                           FROM 
                                              Order_Items));

           
-- This subquery calculates the total number of orders placed by each customer, which can be used to identify loyal customers or segment customers based on their purchasing behavior:   ok                                          
 SELECT 
    c.customer_id,
    c.customer_name,
    (SELECT 
         COUNT(*) 
     FROM 
         Orders o 
     WHERE 
         o.customer_id = c.customer_id) AS total_orders
FROM 
    Customers c;
 
 -- This subquery calculates the total revenue generated by each customer by summing up the total amount spent on all orders placed by that customer: ok 
SELECT 
    c.customer_id,
    c.customer_name,
    (SELECT 
         SUM(oi.quantity * oi.unit_price) 
     FROM 
         Orders o
     INNER JOIN 
         Order_Items oi ON o.order_id = oi.order_id
     WHERE 
         o.customer_id = c.customer_id) AS total_revenue
FROM 
    Customers c;

-- This Subquery to Find Customers Who Placed Orders Worth More Than Average: ok 
SELECT 
    c.customer_id,
    c.customer_name
FROM 
    Customers c
WHERE 
    c.customer_id IN (
        SELECT 
            o.customer_id
        FROM 
            Orders o
        WHERE 
            o.order_id IN (
                SELECT 
                    order_id
                FROM 
                    Order_Items
                GROUP BY 
                    order_id
                HAVING 
                    SUM(quantity * unit_price) > (
                        SELECT 
                            AVG(order_total)
                        FROM 
                            (
                                SELECT 
                                    SUM(quantity * unit_price) AS order_total
                                FROM 
                                    Order_Items
                                GROUP BY 
                                    order_id
                            ) AS avg_orders
                    )
            )
    );


-- Joins
-- Join to Display Customers Who Have Ordered the Most Expensive Product Along with Their Details: ok
  SELECT 
    c.customer_id,
    c.customer_name
FROM 
    Customers c
JOIN 
    (SELECT 
         o.customer_id
     FROM 
         Orders o
     INNER JOIN 
         Order_Items oi
    ON o.order_id = oi.order_id
    WHERE 
        oi.unit_price = (SELECT 
                             MAX(unit_price) 
                         FROM 
                             Order_Items)) AS t;
                             


-- Join to Display Total Number of Orders Placed by Each Customer Along with Their Details: ok
SELECT 
    c.customer_id,
    c.customer_name,
    t.total_orders
FROM 
    Customers c
JOIN 
    (SELECT 
         o.customer_id,
         COUNT(*) AS total_orders
     FROM 
         Orders o 
     GROUP BY 
         o.customer_id) AS t
ON 
    c.customer_id = t.customer_id;
    

-- Join to Display Product Name with the Highest Average Rating: ok

SELECT 
    p.product_name
FROM 
    Products p
JOIN 
    (SELECT 
         r.product_id
     FROM 
         Reviews r
     GROUP BY 
         r.product_id
     ORDER BY 
         AVG(r.rating) DESC
     LIMIT 1) AS t
ON 
    p.product_id = t.product_id;
    
    
-- Join to Retrieve Customer Names with the Highest Rated Product They Ordered: ok
SELECT 
    c.customer_name,
    p.product_name
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
JOIN 
    Order_Items oi ON o.order_id = oi.order_id
JOIN (
    SELECT 
        r.product_id
    FROM 
        Reviews r
    GROUP BY 
        r.product_id
    ORDER BY 
        AVG(r.rating) DESC
    LIMIT 1
) AS top_product ON oi.product_id = top_product.product_id
JOIN 
    Products p ON oi.product_id = p.product_id;

-- to retrieve customer information along with their order details: ok 
SELECT 
    o.order_id,
    c.customer_name,
    o.order_date
FROM 
    Orders o
JOIN 
    Customers c ON o.customer_id = c.customer_id;





    
