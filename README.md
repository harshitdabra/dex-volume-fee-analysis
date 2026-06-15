# dex-volume-fee-analysis

DEX volume and fee tracking across Ethereum protocols. Pulls from Dune's `dex.trades` spellbook, covers the last 30-90 days.

**Dashboard:** https://dune.com/harshit_dabra/dex-volume-fee-analysis

---

## What's in here

Four SQL queries that together give a clear picture of DEX activity on Ethereum:

- Which protocols are doing the most volume day-by-day
- How market share shifts between Uniswap, Curve, Balancer, etc.
- Where fee revenue is coming from and how it trends
- A 30-day summary with totals and per-protocol breakdown

## Files

| File | What it does |
|------|-------------|
| `01_dex_daily_volume_by_protocol_90d.sql` | Daily volume per DEX protocol over 90 days |
| `02_dex_volume_market_share_30d.sql` | Market share % per protocol over 30 days |
| `03_dex_daily_fee_revenue_30d.sql` | Estimated fee revenue by protocol, daily |
| `04_dex_summary_stats_30d.sql` | 30-day totals: volume, trades, fees, active protocols |

Dune queries: [7722580](https://dune.com/queries/7722580) · [7722600](https://dune.com/queries/7722600) · [7722613](https://dune.com/queries/7722613) · [7722626](https://dune.com/queries/7722626)

## Numbers (30-day snapshot)

Uniswap runs about 63% of total DEX volume on Ethereum. Total volume across all protocols was around $39.9B with ~$119M in estimated fees over 30 days.

## Usage

Drop any query file into https://dune.com/queries/new and run it. The `dex.trades` table is public — no API key needed.
