/*select firstname,income, age from customers where income>50000 AND (age<30 OR age>=50) AND (country='japan' OR country='Australia')*/


SELECT SUM(totalamount) from orders where (orderdate>='2004-06-01' AND orderdate <= '2004-06-30') AND totalamount>100;
