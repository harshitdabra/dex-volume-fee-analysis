-- DEX Summary Stats - Ethereum (30d)
-- Dune Query ID: 7722627
-- Aggregate KPI stats for Ethereum DEX activity over the last 30 days:
-- total volume, total trades, estimated fee revenue, and active protocol count

SELECT
    SUM(amount_usd) AS total_volume_usd_30d,
    COUNT(*) AS total_trades_30d,
    SUM(amount_usd) * 0.003 AS total_estimated_fees_30d,
    COUNT(DISTINCT project) AS active_protocols
FROM dex.trades
WHERE
    blockchain = 'ethereum'
    AND block_time >= NOW() - INTERVAL '30' DAY
    AND amount_usd IS NOT NULL
    AND amount_usd > 0
