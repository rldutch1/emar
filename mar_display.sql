/*
Author: Robert Holland
Date: 2014-11-28 16:30:24
Purpose: Show administered medications.
*/

SELECT
	concat(hp.firstname, " ", hp.lastname) name
    , hm.medication
    , h.dose
    , hu.unit
    , h.admin_dttm
    -- , h.active_ind
FROM
	h_mar h
	, h_med hm
	, h_person hp
	, h_unit hu
WHERE
	h.person_id = 5
and
	h.active_ind = 1
and
	hm.id = h.medication
and
	hp.id = h.person_id
and
	hu.id = h.unit
order by
	h.admin_dttm desc


/*
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;

JOIN: Return rows when there is at least one match in both tables
LEFT JOIN: Return all rows from the left table, even if there are no matches in the right table
RIGHT JOIN: Return all rows from the right table, even if there are no matches in the left table
FULL JOIN: Return rows when there is a match in one of the tables
*/
