# DEX Volume + Fee Analysis

A Dune Analytics dashboard tracking decentralized exchange (DEX) volume, fee revenue, and market share across Ethereum protocols.

## Dashboard

**Live Dashboard:** [dune.com/harshit_dabra/dex-volume-fee-analysis](https://dune.com/harshit_dabra/dex-volume-fee-analysis)

## Overview

On-chain analytics for Ethereum DEX activity using the `dex.trades` spellbook table on Dune Analytics. Covers the last 30-90 days of trading data across all major DEX protocols.

## Key Metrics (30-day snapshot)

| Metric | Value |
|--------|-------|
| Total DEX Volume | ~$39.9B |
| Total Trades | ~10.7M |
| Estimated Fee Revenue | ~$119.6M |
| Active Protocols | 29 |

Uniswap dominates with ~63% of total volume.

## Queries

| File | Description | Dune Link |
|------|-------------|-----------|
| 01_dex_daily_volume_by_protocol_90d.sql | Daily DEX trading volume by protocol over 90 days | https://dune.com/queries/7722580 |
| 02_dex_volume_market_share_30d.sql | Volume market share breakdown by protocol over 30 days | https://dune.com/queries/7722600 |
| 03_dex_daily_fee_revenue_30d.sql | Estimated daily fee revenue by protocol over 30 days | https://dune.com/queries/7722613 |
| 04_dex_summary_stats_30d.sql | Aggregate KPI stats: total volume, trades, fees, active protocols | https://dune.com/queries/7722627 |

## Visualizations

- Stacked Bar Chart - Daily DEX volume by protocol (90d trend)
- Pie Donut Chart - Volume market share by protocol (30d)
- Stacked Bar Chart - Estimated daily fee revenue by protocol (30d)
- KPI Counters - Total volume, total trades, estimated fee revenue

## Data Source

All queries use the dex.trades spellbook table on Dune Analytics, filtered for blockchain = ethereum and valid amount_usd.

Note on fees: Fee revenue is estimated using a 0.3% baseline multiplier on trade volume (amount_usd * 0.003).

## Tech Stack

- Platform: Dune Analytics
- Query Language: SQL (DuneSQL / Trino)
- Spellbook Table: dex.trades
- Chain: Ethereum
