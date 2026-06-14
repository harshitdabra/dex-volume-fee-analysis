-- DEX Daily Volume by Protocol (90d)
-- Dune Query ID: 7722580
-- Tracks daily trading volume across DEX protocols on Ethereum over the last 90 days

SELECT
    DATE_TRUNC('day', block_time) AS day,
    project AS dex_protocol,
    SUM(amount_usd) AS volume_usd
FROM dex.trades
WHERE
    blockchain = 'ethereum'
    AND block_time >= NOW() - INTERVAL '90' DAY
    AND amount_usd IS NOT NULL
    AND amount_usd > 0
GROUP BY 1, 2
ORDER BY 1 DESC, 3 DESC
