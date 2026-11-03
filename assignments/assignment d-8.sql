use assignments;

CREATE TABLE Products (
 id INT,
 name VARCHAR(100),
 price DECIMAL(10,2),
 qty INT
 );


INSERT INTO Products VALUES
 (1, 'Pen', 10.00, 100),
 (2, 'Notebook', 25.00, 50),
 (3, 'Pencil', 5.00, 200),
 (4, 'Eraser', 3.00, 300),
 (5, 'Marker', 15.00, 80),
 (6, 'Scale', 20.00, 150),
 (7, 'Sharpener', 8.00, 120),
 (8, 'Geometry Box', 120.00, 40),
 (9, 'Sketch Pen', 60.00, 75),
 (10, 'Crayons', 90.00, 55);
 
/* -- Q6. Add ₹20 to the price of every product.
Q7. Display half of each product's quantity.
Q8. Display double the quantity of every product.
Q9. Find the remaining quantity after selling 10 units.
Q10. Divide the price equally among 5 people.
Q11. Display products whose price is an even number.
Q12. Display products whose quantity is divisible by 5.
Q13. Calculate the price after giving a 10% discount.
Q14. Calculate the price after adding ₹15 and then 18% GST.
Q15. Display the remaining quantity after selling half the stock."
*/

select*from products;

-- Q6
select name,price, price+20 as price_hike from products;

-- Q7
select name,qty, qty/2 as qty_less from products;
-- Q8
select name,qty, qty*2 as qty_hike from products;
-- Q9
select name,qty, qty-10 as qty_sale from products;
-- Q10
select name,price, price/5 as price_div from products;

