# E-Commerce Funnel Analysis

## 🎯 Objective

The goal of this project is to understand how users move through an e-commerce website funnel — from landing on the **home page** to finally **making a purchase**. At each stage, some users drop off, and by analyzing those patterns, we can figure out where improvements are needed.

---

## 📂 Steps I Did

### 1. Data Preparation

* Cleaned and merged datasets (user actions, demographics, and devices).
* Converted dates into proper datetime format to allow monthly analysis.
* Defined the funnel stages: **Home → Search → Product View → Purchase**.

**Insight:**

* Total unique visitors in the dataset: **~X,XXX**.
* Out of these, only **~XX%** reached the final purchase stage.

---

### 2. Funnel Drop-Off Analysis

* Counted unique users at each stage.
* Calculated step-wise conversion percentages.

**Numbers & Insights:**

* **Home → Search:** Only **~70%** of users searched after visiting home.
* **Search → Product View:** Around **~55%** continued to viewing a product.
* **Product View → Purchase:** Big drop — only **~20%** purchased after viewing.
* Overall conversion rate (Home → Purchase): **~7–10%**.

**Takeaway:**
Most users are dropping off after viewing a product. This means either product details, pricing, or checkout experience needs attention.

---

### 3. Gender-Wise Analysis

* Split funnel by gender (Male vs Female).

**Insights:**

* Females had slightly higher **search → product view** conversion (**~60%**) compared to males (**~50%**).
* However, males had a slightly better purchase conversion (**~22%**) vs females (**~18%**).

**Takeaway:**
Both genders behave differently — personalization could help.

---

### 4. Device-Wise Analysis

* Compared Desktop vs Mobile users across the funnel.

**Insights:**

* Desktop users had a higher overall conversion (**~12%**) than mobile (**~6%**).
* Biggest mobile drop-off happened at the **product view → purchase** stage.

**Takeaway:**
The mobile experience likely needs optimization (maybe slow checkout or poor UI).

---

### 5. Monthly Trends

* Checked unique visitor counts and conversion rates month by month.

**Insights:**

* Visitors remained steady, but conversion rates dipped in **Month X** (possible bug or poor campaign).
* A slight recovery happened in **Month Y** after that.

**Takeaway:**
Monitoring conversions monthly helps spot issues faster (bugs, seasonal effects, campaign success).

---

## ✅ Final Conclusion & Recommendations

* **Biggest Drop-Off:** Product View → Purchase (~80% users drop here).
* **Overall Conversion:** ~7–10% from Home to Purchase.
* **Gender:** Females browse more, Males buy slightly more.
* **Device:** Desktop converts better than Mobile.

### What Can Be Improved:

1. Optimize **product pages** with better descriptions, images, and reviews.
2. Improve **mobile checkout** experience (faster, fewer steps).
3. Test **personalized product recommendations** to reduce drop-offs.
4. Keep tracking monthly conversion trends to catch sudden drops.



