
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

SELECT i.Total, c.FirstName, c.LastName, c.Country, e.FirstName, e.lastName
FROM Invoice i 
LEFT JOIN Customer c ON i.customerId = c.customerId
LEFT JOIN Employee e ON e.employeeId = i.customerId;

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


--invoice_37_line_item_count.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

--line_items_per_invoice.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

--line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

--line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

--country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY

--playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

--tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

--invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

--sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

--top_2009_agent.sql: Which sales agent made the most in sales in 2009?

--Hint: Use the MAX function on a subquery.

--top_agent.sql: Which sales agent made the most in sales over all?

--sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.

--sales_per_country.sql: Provide a query that shows the total sales per country.

--top_country.sql: Which country's customers spent the most?

--top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

--top_5_tracks.sql: Provide a query that shows the top 5 most purchased songs.

--top_3_artists.sql: Provide a query that shows the top 3 best selling artists.

--top_media_type.sql: Provide a query that shows the most purchased Media Type.