
--Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.

SELECT FirstName, LastName, CustomerId, Country FROM Customer
WHERE Country != 'USA'

-- Provide a query only showing the Customers from Brazil.

SELECT FirstName, LastName, CustomerId, Country FROM Customer
WHERE Country = 'Brazil';

--Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT c.FirstName, c.LastName,i.InvoiceId,i.InvoiceDate,i.BillingCountry
FROM Customer c
LEFT JOIN Invoice i ON c.customerId = i.customerId
WHERE Country = 'Brazil'

-- Provide a query showing only the Employees who are Sales Agents.

SELECT * FROM Employee 
WHERE Title = 'Sales Support Agent';

--Provide a query showing a unique/distinct list of billing countries from the Invoice table.

SELECT BillingCountry FROM Invoice;

--Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

--SELECT c.FirstName, c.lastName, i.InvoiceId
--FROM Customer c
--LEFT JOIN Invoice i ON c.SupportRepId = i.CustomerId

-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT distinct 
	i.Total,
	CONCAT(c.FirstName, ' ' ,c.LastName) AS CustomerName,
	c.Country,
	CONCAT (e.FirstName, ' ',e.LastName) AS SaleAgentName,
	e.title
FROM Invoice i 
LEFT JOIN Customer c ON i.customerId = c.customerId
LEFT JOIN Employee e ON e.employeeId = i.customerId
WHERE e.title = 'Sales Support Agent';

-- How many Invoices were there in 2009 and 2011?

SELECT COUNT(InvoiceDate)
 FROM Invoice
 WHERE
 InvoiceDate
 BETWEEN '2009-01-01' AND '2011-01-01';

--What are the respective total sales for each of those years?

SELECT COUNT(InvoiceDate)
FROM Invoice
WHERE InvoiceDate 
Between '2009-01-01' AND '2010-01-01'

SELECT COUNT(InvoiceDate)
FROM Invoice
WHERE InvoiceDate 
Between '2010-01-01' AND '2011-01-01'


--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(*) FROM InvoiceLine 
WHERE InvoiceId = 37;

--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

SELECT COUNT(*) FROM InvoiceLine
GROUP BY InvoiceId;

-- Provide a query that includes the purchased track name with each invoice line item.
SELECT t.Name, il.invoiceId
FROM Track t  
LEFT JOIN InvoiceLine il ON t.TrackId = il.InvoiceId;

--Provide a query that includes the purchased track name AND artist name with each invoice line item.

--SELECT 
--	t.Name,
--	a.Name
--FROM Track t, Artist a
	


-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT COUNT(i.InvoiceDate) AS Invoices,
			 i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry;

--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

--SELECT COUNT(pt.TrackId) AS TotalNumberOfTracks,
--	p.Name
--	FROM PlaylistTrack pt
--	JOIN Playlist p ON 
--	GROUP BY pt.TrackId;

-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre

SELECT 
	a.Title,
	m.Name,
	g.Name
FROM Album a, MediaType m, Genre g;
	

--Provide a query that shows all Invoices but includes the # of invoice line items.



--Provide a query that shows total sales made by each sales agent.

	SELECT
		COUNT(i.Total) AS TotalSales,
		e.Title,
		CONCAT(e.FirstName, ' ', e.LastName) AS SalesAgentName
	FROM Invoice i, Employee e
	WHERE Title = 'Sales Support Agent'
	GROUP BY e.FirstName,e.LastName,e.Title;

--Which sales agent made the most in sales in 2009?

	--SELECT
	--	max(i.Total) TotalSales,
	--	CONCAT (e.FirstName, ' ', e.LastName) AS EmployeeName
	--FROM Invoice i, Employee e
	--WHERE i.InvoiceDate = '2009'
	--GROUP BY e.Firstname, e.LastName;
	

--Hint: Use the MAX function on a subquery.

--top_agent.sql: Which sales agent made the most in sales over all?

--sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.

--sales_per_country.sql: Provide a query that shows the total sales per country.

--top_country.sql: Which country's customers spent the most?

--top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

--top_5_tracks.sql: Provide a query that shows the top 5 most purchased songs.

--top_3_artists.sql: Provide a query that shows the top 3 best selling artists.

--top_media_type.sql: Provide a query that shows the most purchased Media Type.