-- E-commerce Project
-- PK

ALTER TABLE orders
ADD CONSTRAINT pk_orders PRIMARY KEY(order_id);

ALTER TABLE customers
ADD CONSTRAINT pk_customer PRIMARY KEY(customer_id);

ALTER TABLE products
ADD CONSTRAINT pk_products PRIMARY KEY(product_id);

ALTER TABLE channels
ADD CONSTRAINT pk_channels PRIMARY KEY(channel_id);

ALTER TABLE payments
ADD CONSTRAINT pk_payments PRIMARY KEY(payment_id);

ALTER TABLE date
ADD CONSTRAINT pk_date PRIMARY KEY(date);

-- FK

ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_payment
FOREIGN KEY (payment_id)
REFERENCES payments(payment_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_channel
FOREIGN KEY (channel_id)
REFERENCES channels(channel_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_product
FOREIGN KEY (product_id)
REFERENCES products(product_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_date
FOREIGN KEY (order_date)
REFERENCES date(date);

-- Business Questions--

-- 1-) Revenue trend over time

SELECT
	d.year,
	d.month,
	ROUND(SUM(o.total_revenue):: numeric,1) AS total_revenue
FROM orders o
JOIN date d ON o.order_date = d.date
WHERE order_status = 'Completed'
GROUP BY 1,2
ORDER BY 1,2

-- 2-) Return & cancellation rates

SELECT
    order_status,
    COUNT(*) AS order_count,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS percentage
FROM orders
GROUP BY order_status;

-- 3-) Which product categories drive revenue

SELECT 
	p.category,
	ROUND(SUM(o.total_revenue) :: numeric,1) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE o.order_status = 'Completed'
GROUP BY 1
ORDER BY 2 DESC

-- 4-) Delivery speed vs returns

SELECT
	delivery_speed,
	COUNT(order_id) AS total_order,
	SUM(
		CASE WHEN is_returned THEN 1 ELSE 0 END
	)AS returned_orders
FROM orders
GROUP BY 1
ORDER BY 2 DESC

-- 5-) Channel performance (volume vs revenue)

SELECT
    c.channel_name,
    COUNT(o.order_id) AS orders,
    ROUND(SUM(o.total_revenue)::numeric,2) AS revenue
FROM orders o
JOIN channels c
  ON o.channel_id = c.channel_id
WHERE o.order_status = 'Completed'
GROUP BY c.channel_name
ORDER BY revenue DESC;

-- 6-) Average Order Value (AOV) Trend

SELECT
    d.year,
    d.month,
        ROUND((SUM(o.total_revenue) / COUNT(o.order_id))::numeric,2)
		AS aov
FROM orders o
JOIN date d
  ON o.order_date = d.date
WHERE o.order_status = 'Completed'
GROUP BY d.year, d.month
ORDER BY d.year, d.month;

-- 7-) Category Contribution & Rank by Month

WITH category_monthly AS (
    SELECT
        d.year,
        d.month,
        p.category,
        SUM(o.total_revenue) AS revenue
    FROM orders o
    JOIN products p
      ON o.product_id = p.product_id
    JOIN date d
      ON o.order_date = d.date
    WHERE o.order_status = 'Completed'
    GROUP BY d.year, d.month, p.category
),
ranked_categories AS (
    SELECT
        year,
        month,
        category,
        revenue,
        RANK() OVER (
            PARTITION BY year, month
            ORDER BY revenue DESC
        ) AS category_rank
    FROM category_monthly
)
SELECT *
FROM ranked_categories
WHERE category_rank <= 3
ORDER BY year, month, category_rank;


