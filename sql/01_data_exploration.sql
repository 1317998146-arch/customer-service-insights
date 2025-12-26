/*
Project: customer-service-insights
Purpose: Initial data exploration for customer service data
Author: ZJY
*/

-- TODO: Define table structure
-- TODO: Basic SELECT queries
-- TODO: Identify key metrics (volume, response time, resolution rate)
-- Table: customer_tickets
-- Description: Stores customer service ticket information

-- ticket_id        : Unique ID of the ticket
-- customer_id      : ID of the customer
-- created_at       : Ticket creation time
-- resolved_at      : Ticket resolution time
-- status           : Ticket status (open, resolved, closed)
-- channel          : Support channel (email, chat, phone)
-- agent_id         : Assigned support agent
-- =========================
-- 1. Data Preview
-- =========================

-- Preview first 10 customer service tickets
SELECT *
FROM customer_tickets
LIMIT 10;

-- =========================
-- 2. Basic Ticket Volume
-- =========================

-- Total number of tickets and customers
SELECT
    COUNT(*) AS total_tickets,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM customer_tickets;

-- =========================
-- 3. Ticket Status Distribution
-- =========================

SELECT
    status,
    COUNT(*) AS ticket_count
FROM customer_tickets
GROUP BY status
ORDER BY ticket_count DESC;
