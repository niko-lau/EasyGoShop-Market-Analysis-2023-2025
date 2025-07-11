# EasyGoShop Marketing Analysis （2023-2025）

## Table of Contents

- [Project Background](#project-background)
- [Executive Summary](#executive-summary)
- [Insights Deep-Dive](#insights-deep-dive)
    - [Conversion Rates and Trends](#sales-trends-and-growth-rates)
    - [Key Product Performance](#key-product-performance)
    - [Customer Growth and Repeat Purchase Trends](#customer-growth-and-repeat-purchase-trends)
    - [Loyalty Program Performance](#loyalty-program-performance)
    - [Sales by Platforms & Channels](#sales-by-platforms--channels)
    - [Refund Rate Trends](#refund-rate-trends)
- [Recommendations](#recommendations)
- [Assumptions and Caveats](#assumptions-and-caveats)

***

<a name="project-background"></a>
## Project Background {#project-background}

EasyGoShop, an online retail business based on Europe, is facing reduced customer engagement and conversion rates despite launching several new online marketing campaigns. I'm partnering with the Marketing Manager and Customer Experience Manager to extract insights and deliver recommendations to improve performance across sales, product, and marketing teams.

## Executive Summary {#executive-summary}

EasyGoShop's 2023–2025 customer behavior and marketing analysis shows a high volatility in engagement and conversion rates with January yielding the highest conversion rate of 17.31% driven by seasonal purchases of ski boots and October being the worst at 6.15%. The Hockey Sticks product was the most successful, with a high of 57.14% conversion in December, while Swim Goggles performed poorly. Geographically, Germany and the Netherlands lead with 15% conversion, while Spain, Belgium, and France trail at 5%, which also identifies areas of potential localization opportunity. The blog site is viewed extensively but has poor user engagement, though video content holds the highest like-to-view ratio. Campaign analysis shows Campaign 15 performing exceptionally well compared to others, whereas Campaigns 1 and 10 did not generate engagement. Customer sentiment is generally positive (840 of 1,300 reviews), but mixed feedback gives a distinct call for service improvement. EasyGoShop can drive expansion by entering underpenetrated European markets, localizing campaigns, highlighting top-performing products seasonally, and investing in short-form video marketing campaigns on social media to spur renewed engagement.

![EasyGoShop Dataset ERD](Visualizations/ERD3.png)
EasyGoShop Dataset ERD

## Insights Deep-Dive {#insights-deep-dive}

### Conversion Rates and Trends {#sales-trends-and-growth-rates}

- ByteX averages $7 million in annual sales with 27,000 orders per year.
- Sales surged in 2020 due to the pandemic but declined by 45% by 2022, returning to just above pre-pandemic levels as physical stores reopened.
- ByteX shows seasonality, with peak sales in November and December and lower sales in February and October.
- North America and EMEA contribute 80% of sales, with the U.S. alone accounting for 50%.
- APAC and LATAM experienced an astounding +200% growth in 2020 but have remained volatile.

![Annual Sales and Growth Rates](Data/visualizations/annual_sales.webp)
![Monthly Metrics](Data/visualizations/monthly_metrics.webp)


### Key Product Performance {#key-product-performance}

- During the pandemic, laptop sales soared, with MacBook orders increasing by 400% and ThinkPad by 220%. This trend has since reversed post-pandemic.
- Four products: monitors, AirPods, laptops, and Samsung Cable Pack, generate 96% of total revenue.
- AirPods account for 45% of all orders ($7.7M revenue).
- Monitors lead in revenue, contributing $9.8 million (35% of total sales) from 2019 to 2022.
- Samsung Cable Pack represents 20% of orders but only 2% of revenue, likely due to its low price or use in promotions.

![Product Performance Table](Data/visualizations/product_performance.webp)

### Customer Growth and Repeat Purchase Trends {#customer-growth-and-repeat-purchase-trends}

- ByteX's unique customers grew steadily from 2019 to 2021, peaking at nearly 30,000 in 2021, but declined sharply by nearly 40% in 2022.
- Repeat purchase rates (≥2 orders) consistently decreased, from 20.22% in 2019 to 14.76% in 2022, indicating challenges in retaining customers after initial purchases.
- The stability in the number of repeat customers suggests a core base of loyal customers who consistently make multiple purchases each year.
- The decline in both unique and repeat customers in 2022 highlights potential shifts in market dynamics or customer preferences.

![Customer Retention Table](Data/visualizations/customer_retention.webp)


### Loyalty Program Performance {#loyalty-program-performance}

- Loyalty members make their first purchase 20 days earlier (30% less time) than non-loyalty members (50 days vs. 70 days).
- Post-pandemic, loyalty metrics surged but began slowing by 2022.
- Loyalty members now lead in key metrics, generating $500K more in revenue, spending $30 more per order, and placing 500K more orders than non-loyalty members.
- The loyalty program performs strongly in North America, while APAC and LATAM regions remain volatile, suggesting a need for targeted strategies.
- Loyalty purchases have a higher refund rate than non-loyalty purchases.

![Loyalty Program Performance Table](Data/visualizations/loyalty.webp)
![Loyalty Program Annual Metrics](Data/visualizations/loyalty_metrics.webp)


### Sales by Platforms & Channels {#sales-by-platforms--channels}

- Direct channel account for 83% ($23M) of ByteX's sales.
- Social media contributes 1% of sales, and affiliate channels contribute 3% ($878K).
- Affiliate channels have the highest average order value (AOV) at $303, while email campaigns have the lowest AOV at $181.
- The website generates 97% ($27M) of sales with an AOV of $304, whereas the mobile app ($867K) lags with an AOV of $47.
- Further considerations on channel performance are detailed in the assumptions and caveats section.

![Sales by Platform and Channel](Data/visualizations/channel_platform.webp)


### Refund Rate Trends {#refund-rate-trends}

- Refund rates for high-ticket items peaked early in the pandemic but have since stabilized at 4-6%.
- In 2021, refunds decreased across all products compared to the the previous two years.
- Laptops had the highest refund rates in 2019 and 2020 (17%) but have since dropped to 6-9%, aligning with other product categories.
- Apple Airpods Headphones have the highest refund count at 2.6K (5% refund rate).
- Loyalty purchases exhibit a higher refund rate than non-loyalty purchases, potentially warranting further investigation.

![Loyalty Impact on Refund Rates](Data/visualizations/loyalty_impact_refund.webp)

## Recommendations {#recommendations}

Maximizing Product Offerings

- **Expand High-Performing Categories**: Increase catalog variations in monitors, AirPods, and laptops to meet diverse customer needs with premium models, driving repeat purchases and solidifying market presence.
- **Optimize Samsung Cable Pack**: Reevaluate the Samsung Cable Pack's pricing strategy, bundle it with high-value items, or offer as a promotional gift to increase average order value (AOV) and revenue contribution.

***

Customer Growth and Retention

- **Boost Repeat Purchases**: Target single-purchase customers with personalized re-engagement campaigns and introduce tiered rewards within the loyalty program to incentivize frequent purchases and improve retention.
- **Revitalize Customer Acquisition**: Expand acquisition channels to include social media, influencer partnerships, and affiliate programs. Refine ByteX's messaging to re-engage past customers and attract new ones.
- **Leverage Core Customer Insights**: Analyze behaviors and preferences of repeat customers to enhance loyalty campaigns. Introduce referral incentives to drive word-of-mouth growth and increase new customer acquisition from existing networks.

## Assumptions and Caveats {#assumptions-and-caveats}

- **Sales and Marketing Channels**: Direct and email channels are top drivers of sales, yet the link between these channels and the loyalty program is uncertain due to deterministic channel-account-order relationships.
    - **Attribution of Purchases to Channels**: Ideally, each purchase would be attributed to the marketing channel that directly led to it, rather than defaulting all future purchases to the initial channel. However, the current dataset reflects the entry point at account creation, not at individual purchase. Despite this, the data provides insights on loyalty membership by channel:
        - **Email Channel**: Highest loyalty membership rate at 58%.
        - **Direct Channel**: Largest loyalty membership count, with 32,906 members (72% of all loyalty members).
    - These metrics could inform strategic channel emphasis to boost loyalty engagement.
