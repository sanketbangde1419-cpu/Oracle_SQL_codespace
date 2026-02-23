SELECT * from ADMIN.ORDERS;


SELECT 
    order_id,
    status,
    first_name,
    LAST_NAME

from ADMIN.ORDERS

left JOIN ADMIN.EMPLOYEES on employee_id = ORDERS.SALESMAN_ID

ORDER by ORDERS.ORDER_ID asc;


SELECT 
    NAME,
    order_id,
    STATUS,
    order_date

FROM 
    ADMIN.CUSTOMERS
left JOIN 

