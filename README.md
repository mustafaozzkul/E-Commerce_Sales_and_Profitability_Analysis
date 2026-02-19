# E-Commerce Sales & Profitability Analysis

## Project Background

E-commerce companies operate in an increasingly competitive environment where revenue growth alone is no longer sufficient. Rising acquisition costs, aggressive discounting strategies, increasing return rates, and operational expenses continue to put pressure on profitability.Understanding what drives revenue, how margin is impacted by pricing and promotions, and where operational inefficiencies exist is critical for sustainable growth and informed decision-making.

This project analyzes a two-year transactional e-commerce dataset (2024–2025) to examine revenue trends, profitability drivers, channel performance, product lifecycle contribution, and operational cost structure.

The analysis integrates data modeling, ETL processes, SQL-based business querying, and executive-level dashboard design to translate raw transactional data into strategic business insight.

The analysis focuses on the following key areas:
- Executive Overview - Provides a high-level view of revenue performance, order trends, and core financial KPIs. Highlights year-over-year changes in revenue, average order value, profit margin, and return rate to support executive decision-making.
- Revenue & Product Performance - Examines how revenue is distributed across product categories and lifecycle stages to identify growth drivers and structural dependencies within the product portfolio.
- Channel & Campaign Effectiveness - Analyzes performance across sales channels and marketing campaign types to assess differences in revenue contribution, customer behavior, and profitability impact.
- Profitability & Cost Structure - Breaks down revenue into key cost components — including discounts, shipping, payment fees, and tax — to identify the primary drivers of margin compression.
- Operational Performance & Returns - Evaluates delivery efficiency and return rate trends to uncover operational pressures and their influence on overall profitability.

A structured analytics workflow supports data ingestion, transformation, and analysis:

- Python for ETL workflows, including data cleaning, validation, and feature engineering
- PostgreSQL for analytics-oriented data modeling and SQL-based analysis
- Power-BI for interactive dashboards and executive-level data storytelling

An Interective Tableau Dashboard are available [here.](https://app.powerbi.com/groups/me/reports/26c7b30e-7198-4acb-95b3-d572de588e32/f77a97c078697c2b0fc0?experience=power-bi)

SQL queries for data modeling and business analysis are available [here]

Python scripts used for data preparation and transformation are available [here].

## Data Structure & Initial Checks
The dataset follows a star-schema structure optimized for revenue analysis, profitability diagnostics, channel performance evaluation, and product-level benchmarking.

Data model and transformations are available [here].

## Business Questions

This analysis is designed to address the following business questions:

- What are the primary drivers of revenue decline and margin compression?
- How does discount intensity impact overall profitability?
- Which product categories and lifecycle stages contribute most to total revenue?
- How do different sales channels and campaign types compare in terms of revenue quality and average order value?
- To what extent do return behavior and operational costs (shipping, payment fees, tax) affect net profit?

## Executive Overview

### Insights & Business Implications

#### Key Insights
 - Total revenue declined year-over-year despite relatively stable order volume, indicating pressure on pricing and customer spend.
 - Average Order Value (AOV) decreased significantly, contributing more to revenue decline than volume loss.
 - Profit margin compressed faster than revenue, signaling structural profitability pressure.
 - Return rate showed a modest upward trend, increasing margin risk.

#### Potential Actions
 - Reassess discount strategy to protect average order value.
 - Identify customer segments driving lower AOV and adjust pricing tiers.
 - Investigate return drivers to prevent further margin erosion..

![Executive](https://github.com/mustafaozzkul/E-Commerce_Sales_and_Profitability_Analysis/blob/main/Executive%20.png?raw=true)

## Revenue & Product Performance

### Insights & Business Implications

#### Key Insights
- Revenue is heavily concentrated in mature lifecycle products, limiting long-term growth potential.
- New product contribution remains comparatively low, increasing dependency on aging SKUs.
- Category-level revenue distribution reveals structural concentration risk.

#### Potential Actions
 - Accelerate new product innovation and promotional support.
 - Rebalance marketing investment toward high-growth categories.
 - Implement lifecycle-based pricing strategies to protect mature-product margins.
 - Monitor category revenue dependency ratios.

![Revenue_Product](https://github.com/mustafaozzkul/E-Commerce_Sales_and_Profitability_Analysis/blob/main/Product.png?raw=true)

## Channel & Campaign Performance

### Insights & Business Implications

#### Key Insights
 - Significant differences exist in average order value across sales channels.
 - Affiliate and marketplace channels generate lower AOV compared to direct channels.
 - Campaign types with higher discount intensity exhibit lower profitability contribution.

#### Potential Actions
 - Re-evaluate affiliate economics and commission structure.
 - Shift marketing budget toward high-margin acquisition channels.
 - Introduce campaign-level profitability thresholds.

![Channel](https://github.com/mustafaozzkul/E-Commerce_Sales_and_Profitability_Analysis/blob/main/Channel.png?raw=true)

## Operations & Profitability

### Insights & Business Implications

#### Key Insights
 - Net profit declined faster than total revenue, indicating structural margin compression rather than pure sales contraction.
 - Profit margin decreased primarily due to increased discount intensity rather than operational cost volatility.
 - Discount-related reductions represent the largest controllable driver of profit erosion within the P&L breakdown.
 - Return rate increased modestly, further amplifying margin pressure through revenue reversal and cost absorption.

#### Potential Actions
 - Introduce margin-based discount guardrails to prevent excessive promotional dilution.
 - Conduct targeted return analysis to identify categories driving margin leakage.

![Operation](https://github.com/mustafaozzkul/E-Commerce_Sales_and_Profitability_Analysis/blob/main/Operation.png?raw=true)

## Strategic Recommendations

Based on cross-dashboard insights, the analysis highlights several strategic opportunities to stabilize revenue and restore profitability:
 - Rebalance pricing and promotion strategy by introducing margin-based discount controls to prevent excessive profitability erosion.
 - Recalibrate the discount strategy, as promotional intensity is the primary controllable driver of profit erosion. Introducing margin-based discount thresholds can prevent excessive margin dilution.
 - Integrate return-adjusted profitability tracking, as increasing return rates combined with high discounts amplify margin pressure.
 - Reduce dependency on mature products by strengthening growth initiatives around newer or higher-margin categories to diversify the revenue base.

