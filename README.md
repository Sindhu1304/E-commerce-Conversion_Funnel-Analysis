# 🛒 E-commerce Funnel Analysis

## 📌 Overview
The goal of this project is to analyze the **user journey funnel** of an e-commerce website and identify key stages where users drop off.  
A funnel typically consists of stages such as **Home → Search → Payment → Confirmation**. At each step, users may abandon the site. The goal of this project is to perform Funnel Analysis on an e-commerce website’s user journey to identify where customers drop off, calculate conversion rates at each stage, and provide actionable business insights to improve overall conversions. 
Understanding these drop-offs is crucial for:  
- Optimizing user experience (UX)  
- Improving conversion rates  
- Identifying technical or design issues  

---

## 📊 Dataset
The analysis uses **~90,400 user interactions** across 5 CSVs:
- `user_table.csv` → user_id, date, device, sex  
- `home_page_table.csv` → users who visited homepage  
- `search_page_table.csv` → users who searched  
- `payment_page_table.csv` → users who reached payment  
- `payment_confirmation_table.csv` → users who completed purchase  

---

##  Funnel Analysis in Python
Tools: **Python (Pandas, Matplotlib, Plotly)**  

### 🔹 Stage Counts
| Stage          | Users   |
|----------------|---------|
| Home Page      | 90,400  |
| Search Page    | 45,200  |
| Payment Page   | 6,030   |
| Confirmation   | 452     |

### 🔹 Conversion Rates
- Home → Search: **50%**  
- Search → Payment: **13.34%**  
- Payment → Confirmation: **7.50%**  
- Overall Funnel Conversion: **0.5%**  

### 🔹 Funnel Visualization
*(Generated using Plotly)*  

![Funnel Chart](<img width="1699" height="526" alt="image" src="https://github.com/user-attachments/assets/6d8f1630-d1f5-47bd-924a-08d5ccdaad89" />
)  

---

### 🔹 Key Queries
```sql
-- Count distinct users at each stage
SELECT COUNT(DISTINCT user_id) AS home_users FROM home_page_table;
SELECT COUNT(DISTINCT user_id) AS search_users FROM search_page_table;
SELECT COUNT(DISTINCT user_id) AS payment_users FROM payment_page_table;
SELECT COUNT(DISTINCT user_id) AS confirm_users FROM payment_confirmation_table;

-- Conversion: Home → Search
SELECT 
    CAST(COUNT(DISTINCT s.user_id) AS FLOAT) / COUNT(DISTINCT h.user_id) * 100 AS home_to_search_rate
FROM home_page_table h
LEFT JOIN search_page_table s ON h.user_id = s.user_id;
```

### 🔹 SQL Outputs
- Home Users = **90,400**  
- Search Users = **45,200**  
- Payment Users = **6,030**  
- Confirm Users = **452**  
- Conversion Rates = **50% → 13.34% → 7.50% → 0.5% overall**  

---



### Time Trend Analysis (Monthly Conversion)

Conversion rates fluctuate monthly.

Around March 1st, a sharp drop in conversions occurred → possible bug release / A/B test failure.

✅ Insight: Technical or product changes in March severely impacted conversions
- **March 1st outage/bug**: sudden funnel-wide conversion drop.  


## 🔍 Segmentation Insights

### By Gender
Conversion rate for Female: 0.53%,
and for Male: 0.47%
- Conversions nearly identical → **gender not a significant factor**.


- ### By Device

Home Visitors: Desktop = 60k, Mobile = 30k.

Final Conversion:

Desktop → 0.25%

Mobile → 1.00%

Mobile converts 4x better than Desktop.

fewer users are using mobile but **better conversion** and Desktop users drop off disproportionately, especially during Payment & Confirmation.



## 📌 Key Findings
- Only **0.5% of users** who visit the homepage complete a purchase.  
- **Biggest leaks**:  
  - Home → Search (50% drop-off)  
  - Search → Payment (86.7% drop-off)  
  - Payment → Confirmation (92.5% drop-off)
  - Stage-wise conversions: 50% (Home → Search), 13.3% (Search → Payment), 7.5% (Payment → Confirmation), with an overall funnel conversion of just 0.5%. 
-  Segmentation analysis: Gender showed no impact, but Desktop users underperformed versus Mobile (0.25% and 1 %).
-   **Desktop users struggle more than Mobile users**, especially at checkout.  
- A **critical outage on March 1st** caused funnel-wide collapse.  

---


## Conclusion and Recommendations
1). Fix Checkout Flow

Desktop checkout needs urgent optimization.
Investigate confirmation failures — possible UX issues, bugs, or payment gateway problems.

2).Improve Search → Payment Conversion

Users drop heavily at this stage → check product discovery, pricing, and cart usability.
Implement cart abandonment reminders and run UX A/B tests.

3).Investigate March Drop

Analyze logs for March 1st release → likely a payment bug or broken flow.

4).Leverage Mobile Strength

Mobile conversions are 4x higher than Desktop.
Push more campaigns on Mobile and further optimize mobile search & payments.

5).Long-Term Improvements

Add heatmaps/session replays for checkout behavior.
Conduct A/B testing on payment pages.
Introduce personalized product recommendations to improve cart-to-payment conversion.

---

## 🛠 Tools & Skills
- **Python**: Pandas, Matplotlib, Plotly  
- **SQL**: MS SQL Server (funnel queries)  
- **Product Analytics**: Funnel metrics, conversion rate analysis, segmentation  
- **Data Storytelling**: Actionable insights & business recommendations  

---



