SELECT
order_id,
customer_id,
status,
order_date
FROM
Admin.ORDERS
WHERE
status = 'Pending'
AND customer_id = 2
ORDER BY
order_date;

SELECT
order_id,
customer_id,
status,
order_date
FROM
Admin.ORDERS
WHERE
status = 'Shipped'
AND salesman_id = 60
AND EXTRACT(YEAR FROM order_date) = 2017
ORDER BY
order_date;

SELECT
    order_id,
    customer_id,

status,
    order_date

FROM
    Admin.ORDERS

WHERE
    status IN   ('Pending','Canceled')
    AND customer_id = 44
    ORDER BY
    order_date;


SELECT
    order_id,
    customer_id,
    status,
    order_date
FROM
    Admin.ORDERS
WHERE
    status = 'Pending'
    OR  status = 'Canceled'
ORDER BY
    order_date DESC;


SELECT
    order_id,
    customer_id,
    status,
    order_date
FROM
    Admin.ORDERS
WHERE
    SALESMAN_ID = 60
    OR SALESMAN_ID = 61
    OR SALESMAN_ID = 62
ORDER BY
    order_date DESC;


SELECT
    order_id,
    customer_id,
    status,
    order_date
FROM
    Admin.ORDERS
WHERE
    SALESMAN_ID IN (60, 61, 62)
ORDER BY
    order_date DESC;


SELECT
    order_id,
    customer_id,
    status,
    order_date
FROM
    Admin.ORDERS
WHERE
CUSTOMER_ID = 44
    AND    STATUS = 'Canceled'
    OR STATUS = 'Pending'

    
ORDER BY
    order_date;



SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME

FROM
    ADMIN.EMPLOYEES

WHERE
    EMPLOYEE_ID IN(
        SELECT
            DISTINCT salesman_id
        FROM
            ADMIN.ORDERS
        WHERE
            STATUS = 'Canceled'

    )
ORDER BY
first_name;

SELECT
    customer_id,
    name
FROM
    admin.customer
WHERE
    customer_id not in (
        select
            customer_id
        from
            admin.orders 
    );



SELECT
    PRODUCT_NAME,
    STANDARD_COST

FROM
    ADMIN.PRODUCTS

WHERE
    STANDARD_COST BETWEEN 500 AND 600

ORDER BY
    STANDARD_COST;

 
 SELECT 
    FIRST_NAME,
    LAST_NAME,
    PHONE
FROM
    ADMIN.CONTACTS
WHERE
    LAST_NAME LIKE 'St%'
ORDER BY
    LAST_NAME;


SELECT 
    FIRST_NAME,
    LAST_NAME,
    PHONE
FROM
    ADMIN.CONTACTS
WHERE
    LAST_NAME LIKE '%er'
ORDER BY
    LAST_NAME;


 SELECT 
    FIRST_NAME,
    LAST_NAME,
    EMAIL
FROM
    ADMIN.CONTACTS
WHERE
    UPPER (LAST_NAME) LIKE 'ST%'
ORDER BY
    LAST_NAME;


SELECT 
    FIRST_NAME,
    LAST_NAME,
    PHONE
    EMAIL
FROM
    ADMIN.CONTACTS
WHERE
    FIRST_NAME LIKE 'Je_%'
ORDER BY
    LAST_NAME;


select * from ADMIN.ORDERS
WHERE SALESMAN_ID IS NULL
ORDER BY    ORDER_DATE DESC;

select * from ADMIN.ORDERS
WHERE SALESMAN_ID IS NULL
ORDER BY    ORDER_DATE DESC;

select * from ADMIN.ORDERS
WHERE SALESMAN_ID IS NOT NULL
ORDER BY    ORDER_DATE DESC;

