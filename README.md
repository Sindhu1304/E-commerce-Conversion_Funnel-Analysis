# E-Commerce Funnel Analysis
## Objective

The goal of this project is to perform Funnel Analysis on an e-commerce website’s user journey to identify where customers drop off, calculate conversion rates at each stage, and provide actionable business insights to improve overall conversions.

## 🔄 Steps & Insights
Step 1: Data Loading & Cleaning

Datasets loaded: home_page_table (90,400 rows), search_page_table (45,200), payment_page_table (6,030), payment_confirmation_table (452), and user_table (90,400).

Merged into a unified dataset with user journeys across stages.

✅ Insight: The dataset is well-structured, with user actions clearly separated into funnel stages.

## Step 2: Funnel User Counts

Home Page Visitors: 90,400

Search Page Visitors: 45,200 (↓ 50% drop-off)

Payment Page Visitors: 6,030 (↓ 86.6% drop-off from Search)

Payment Confirmation (Completed Purchase): 452 (↓ 92.5% drop-off from Payment)

✅ Insight: Only 0.5% of users (452/90,400) complete a purchase — extremely low.

## Step 3: Stage-wise Conversion Rates

Home → Search: 50.00%

Search → Payment: 13.34%

Payment → Confirmation: 7.50%

Overall Funnel Conversion: 0.50%

✅ Insight:

The biggest leak is between Search → Payment (86.6% drop-off).

The final Payment → Confirmation step loses 92.5% of users.

## Step 4: Drop-off Analysis

From Home → Search: 45,200 users lost (50%).

From Search → Payment: 39,170 users lost (86.6%).

From Payment → Confirmation: 5,578 users lost (92.5%).

✅ Insight: The checkout process (Payment & Confirmation) is the most critical bottleneck.

## Step 5: Trend Analysis (Monthly Conversion)

Conversion rates fluctuate monthly.

Around March 1st, a sharp drop in conversions occurred → possible bug release / A/B test failure.

✅ Insight: Technical or product changes in March severely impacted conversions.

## Step 6: Segmentation Analysis
### By Gender

Home → Confirmation:

Female: 0.53%

Male: 0.47%

No significant difference → gender not a major factor.

✅ Insight: Gender balance is stable; drop-offs are similar for both groups.

### By Device

Home Visitors: Desktop = 60k, Mobile = 30k.

Final Conversion:

Desktop → 0.25%

Mobile → 1.00%

Mobile converts 4x better than Desktop.

✅ Insight: Desktop users drop off disproportionately, especially during Payment & Confirmation.

## 📊 Key Findings

Massive drop-offs: Only 0.5% of users purchase despite high traffic.

Search → Payment stage (13% conversion) and Payment → Confirmation (7.5%) are the weakest points.

March 1st bug/feature release caused a sudden drop.

Gender has no effect, but Device matters: Mobile performs far better than Desktop.

## ✅ Conclusion & Recommendations

Fix Checkout Flow

Desktop checkout needs urgent optimization.

Investigate confirmation failures — possible UX issues, bugs, or payment gateway problems.

Improve Search → Payment Conversion

Users drop heavily here → check product discovery, pricing, and cart usability.

Implement cart abandonment reminders and UX A/B tests.

Investigate March Drop

Analyze logs for Mar 1st release → could be a payment bug or broken flow.

Leverage Mobile Strength

Mobile has 4x higher conversions.

Push more campaigns on Mobile, optimize mobile search & payments further.

Long-Term Improvements

Add heatmaps/session replays for checkout.

Conduct A/B testing on payment pages.

Personalize product recommendations to improve cart-to-payment conversion.

## 🚀 Impact

If the Search → Payment and Payment → Confirmation stages are optimized to even double their current conversion rates, the overall conversion rate could rise from 0.5% → ~2%, a 4x improvement, leading to massive revenue growth.
