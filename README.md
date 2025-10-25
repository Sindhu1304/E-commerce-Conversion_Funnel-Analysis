# Funnel Analysis for E-commerce Platform

## Project Overview

This project simulates a real-world product analytics scenario: diagnosing sudden conversion drops in an e-commerce funnel. We analyze ~90,400 user interactions to identify critical drop-offs along the user journey (Home → Search → Payment → Confirmation), segment behavior by device and gender, and propose actionable product and UX improvements.

**Key Business Question:** Why are only a small fraction of users completing purchases, and what interventions can improve conversions?

## Hypothesis

* Primary Hypothesis: Conversion rates dropped due to checkout friction on Desktop devices and a March 1st outage affecting payments.
* Secondary Hypotheses:

  * Gender has minimal impact on funnel drop-offs.
  * Mobile users perform better than Desktop due to optimized UX.

## Dataset & Tools

| Dataset                          | Description                |
| -------------------------------- | -------------------------- |
| `user_table.csv`                 | user_id, date, device, sex |
| `home_page_table.csv`            | users visiting homepage    |
| `search_page_table.csv`          | users performing search    |
| `payment_page_table.csv`         | users reaching payment     |
| `payment_confirmation_table.csv` | users completing purchase  |

**Tools & Libraries:** Python (Pandas, Plotly, Matplotlib), SQL (MS SQL Server), Jupyter Notebook
**Concepts Applied:** Funnel Metrics, Conversion Analysis, Segmentation, Time Trend Analysis, Product Hypothesis Testing

## Methodology

### 1. Data Preparation

* Merged CSV files to create end-to-end user journeys.
* Removed duplicate user IDs.
* Verified funnel stage integrity (Home → Search → Payment → Confirmation).

### 2. Funnel Analysis

**Stage-wise Users & Conversion Rates:**

| Stage                     | Users           | Conversion Rate |
| ------------------------- | --------------- | --------------- |
| Home → Search             | 90,400 → 45,200 | 50%             |
| Search → Payment          | 45,200 → 6,030  | 13.34%          |
| Payment → Confirmation    | 6,030 → 452     | 7.50%           |
| Overall Funnel Conversion | 90,400 → 452    | 0.5%            |

* Largest drop-offs occur at Search → Payment (86.7%) and Payment → Confirmation (92.5%).

### 3. Time-Based Trend

* Plotted monthly conversion rates.
* March 1st anomaly: sudden funnel-wide drop → likely due to technical bug / release issue.

### 4. Segmentation Analysis

#### By Gender

| Gender | Conversion Rate |
| ------ | --------------- |
| Female | 0.53%           |
| Male   | 0.47%           |

**Insight:** Gender does not significantly affect conversions.

#### By Device

| Device  | Users  | Conversion Rate |
| ------- | ------ | --------------- |
| Desktop | 60,000 | 0.25%           |
| Mobile  | 30,400 | 1.00%           |

**Insight:** Mobile converts 4× better than Desktop; Desktop users drop off mainly at checkout & confirmation stages.

### 5. SQL Queries (Representative)

```sql
-- Count distinct users at each stage
SELECT COUNT(DISTINCT user_id) AS home_users FROM home_page_table;
SELECT COUNT(DISTINCT user_id) AS search_users FROM search_page_table;
SELECT COUNT(DISTINCT user_id) AS payment_users FROM payment_page_table;
SELECT COUNT(DISTINCT user_id) AS confirm_users FROM payment_confirmation_table;

-- Conversion Home → Search
SELECT CAST(COUNT(DISTINCT s.user_id) AS FLOAT)/COUNT(DISTINCT h.user_id)*100 AS home_to_search_rate
FROM home_page_table h
LEFT JOIN search_page_table s ON h.user_id = s.user_id;
```

## Key Insights

1. Only 0.5% of users complete a purchase → huge funnel inefficiency.
2. Major drop-offs: Home → Search: 50% loss, Search → Payment: 86.7% loss, Payment → Confirmation: 92.5% loss
3. Desktop users are underperforming (0.25%) vs. Mobile (1%).
4. March 1st outage/bug caused a sudden funnel-wide conversion collapse.
5. Gender does not significantly influence conversions.

## Product Recommendations

Based on these insights, the following actions are recommended to improve conversions and optimize the user journey:

* **Checkout (Desktop):** Redesign the payment flow and investigate confirmation failures to increase conversion from 0.25% → 0.8%.
* **Search → Payment:** Optimize cart UX, product discovery, and implement reminders to reduce mid-funnel leak and increase payment completion.
* **Incident Handling:** Audit March 1 release logs and fix any bugs to prevent future funnel-wide drops.
* **Mobile Optimization:** Push mobile-first campaigns and optimize search & payment experiences to leverage 4× higher conversion rates.

**This narrative approach connects data insights with actionable product roadmap decisions, demonstrating end-to-end product analytics thinking.**

## Future Experiments

* Test checkout micro-interactions via A/B testing.
* Personalize product recommendations for high-value users.
* Track session replays/heatmaps to detect friction points.

## Reference

Medium case study on real-world e-commerce funnel analysis:
[https://medium.com/@u3554364/funnel-analysis-of-e-commerce-website-with-real-data-e858e288ffb9](https://medium.com/@u3554364/funnel-analysis-of-e-commerce-website-with-real-data-e858e288ffb9)

## 🛠 Tools & Skills
- **Python**: Pandas, Matplotlib, Plotly  
- **SQL**: MS SQL Server (funnel queries)  
- **Product Analytics**: Funnel metrics, conversion rate analysis, segmentation  
- **Data Storytelling**: Actionable insights & business recommendations  

---


