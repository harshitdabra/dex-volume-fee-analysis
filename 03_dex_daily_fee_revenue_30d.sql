-- DEX Daily Fee Revenue by Protocol (30d)
-- Dune Query ID: 7722613
-- Estimated daily fee revenue by DEX protocol on Ethereum over the last 30 days
-- Note: dex.trades does not have a raw fee column.
-- Fee revenue is estimated at 0.3% of volume (amount_usd * 0.003),
-- which approximates the standard AMM fee tier.

SELECT
    DATE_TRUNC('day', block_time) AS day,
    project AS dex_protocol,
    SUM(amount_usd) AS daily_volume_usd,
    SUM(amount_usd) * 0.003 AS estimated_fees_usd
FROM dex.trades
WHERE
    blockchain = 'ethereum'
    AND block_time >= NOW() - INTERVAL '30' DAY
    AND amount_usd IS NOT NULL
    AND amount_usd > 0
GROUP BY 1, 2
ORDER BY 1 DESC, 4 DESC
