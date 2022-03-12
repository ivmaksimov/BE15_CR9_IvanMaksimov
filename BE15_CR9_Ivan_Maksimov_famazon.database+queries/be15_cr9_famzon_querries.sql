


--  showing delivery companies from Austria - name , and ZIP code .

SELECT name, adress, city, ZIP
FROM delivering_companies
WHERE country = "Austria";


-- showing which  products have  quantity  more than 35.

SELECT *
FROM products
WHERE products.quantity > 35;


-- showing acounts with last time login from 01.01.2019 to 01.01.2022

SELECT *
FROM acounts
WHERE acounts.last_login > ("2019-01-01") AND acounts.last_login < ("2022-01-01");


-- showing the purchases dates for customer with first name Marko

SELECT customers.first_name, purchases.purchase_date
FROM customers
  JOIN purchases on purchases.fk_acount_id = customers.fk_acount_id
WHERE first_name = "Marko";


-- showing which companies are from Amstetten.

SELECT *
FROM companies
  JOIN comp_adresses ON comp_adresses.fk_comp_id = companies.comp_id
WHERE comp_adresses.city = "Amstetten";


-- showing the first name , last name, purcasing dates , product name, and product price for customer - Cristina.

SELECT customers.first_name, last_name, purchases.purchase_date, products.name, products.price
FROM customers
  JOIN purchases on purchases.fk_acount_id = customers.fk_acount_id
  JOIN products on products.product_id = purchases.fk_product_id
WHERE first_name = "Christina ";


-- showing the list of customers first name, last name, product ordered, price, shipping date and delivery date.

SELECT customers.first_name, last_name, products.name, products.price, shipments.shipp_date, shipments.delivery_date
FROM customers
  JOIN purchases on purchases.fk_acount_id = customers.fk_acount_id
  JOIN products on products.product_id = purchases.fk_product_id
  JOIN shipments on shipments.fk_purchase_id = purchases.purchase_id
WHERE purchases.purchase_date < ("2021-10-12");


-- showing the list of customers - first and last name, purchase= date and quantity, product- name and price , from wich company us the product where quantyty of purchased products is more than one.

SELECT customers.first_name, customers.last_name, purchases.purchase_date, purchases.quantity, products.name, products.price, companies.name
FROM customers
  JOIN purchases on purchases.fk_acount_id = customers.fk_acount_id
  JOIN products on products.product_id = purchases.fk_product_id
  JOIN product_company ON product_company.fk_product_id = products.product_id
  JOIN companies on companies.comp_id = product_company.fk_comp_id
WHERE purchases.quantity > 1;



-- selecting the name and price of the product company name, adress and city delivery and purchase date 

SELECT products.name, products.price, companies.name, comp_adresses.city, shipments.delivery_date, purchases.purchase_date
FROM products
  JOIN product_company ON product_company.fk_product_id = products.product_id
  JOIN companies on companies.comp_id = product_company.fk_comp_id
  JOIN comp_adresses on comp_adresses.fk_comp_id = companies.comp_id
  JOIN shipments ON shipments.fk_comp_id = companies.comp_id
  JOIN purchases on purchases.purchase_id = shipments.fk_purchase_id
WHERE products.price > 30;