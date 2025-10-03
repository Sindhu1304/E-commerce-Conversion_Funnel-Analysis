
/* 1. Count distinct users at each funnel stage */
SELECT COUNT(DISTINCT user_id) AS home_users
FROM home_page_table;

SELECT COUNT(DISTINCT user_id) AS search_users
FROM search_page_table;

SELECT COUNT(DISTINCT user_id) AS payment_users
FROM payment_page_table;

SELECT COUNT(DISTINCT user_id) AS confirm_users
FROM payment_confirmation_table;


/* 2. Conversion rates between stages */

/* Home → Search */
SELECT 
    CAST(COUNT(DISTINCT s.user_id) AS FLOAT) / COUNT(DISTINCT h.user_id) * 100 
        AS home_to_search_rate
FROM home_page_table h
LEFT JOIN search_page_table s
    ON h.user_id = s.user_id;

/* Search → Payment */
SELECT 
    CAST(COUNT(DISTINCT p.user_id) AS FLOAT) / COUNT(DISTINCT s.user_id) * 100 
        AS search_to_payment_rate
FROM search_page_table s
LEFT JOIN payment_page_table p
    ON s.user_id = p.user_id;

/* Payment → Confirmation */
SELECT 
    CAST(COUNT(DISTINCT c.user_id) AS FLOAT) / COUNT(DISTINCT p.user_id) * 100 
        AS payment_to_confirm_rate
FROM payment_page_table p
LEFT JOIN payment_confirmation_table c
    ON p.user_id = c.user_id;

/* Overall Home → Confirmation */
SELECT 
    CAST(COUNT(DISTINCT c.user_id) AS FLOAT) / COUNT(DISTINCT h.user_id) * 100 
        AS overall_conversion_rate
FROM home_page_table h
LEFT JOIN payment_confirmation_table c
    ON h.user_id = c.user_id;


/* 3. Segmentation Analysis */

/* Conversion by Device */
SELECT 
    u.device,
    COUNT(DISTINCT h.user_id) AS home_users,
    COUNT(DISTINCT s.user_id) AS search_users,
    COUNT(DISTINCT p.user_id) AS payment_users,
    COUNT(DISTINCT c.user_id) AS confirm_users
FROM user_table u
LEFT JOIN home_page_table h ON u.user_id = h.user_id
LEFT JOIN search_page_table s ON u.user_id = s.user_id
LEFT JOIN payment_page_table p ON u.user_id = p.user_id
LEFT JOIN payment_confirmation_table c ON u.user_id = c.user_id
GROUP BY u.device;


/* Conversion by Gender */
SELECT 
    u.sex,
    COUNT(DISTINCT h.user_id) AS home_users,
    COUNT(DISTINCT s.user_id) AS search_users,
    COUNT(DISTINCT p.user_id) AS payment_users,
    COUNT(DISTINCT c.user_id) AS confirm_users
FROM user_table u
LEFT JOIN home_page_table h ON u.user_id = h.user_id
LEFT JOIN search_page_table s ON u.user_id = s.user_id
LEFT JOIN payment_page_table p ON u.user_id = p.user_id
LEFT JOIN payment_confirmation_

