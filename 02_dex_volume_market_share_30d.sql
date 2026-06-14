-- DEX Volume Market Share by Protocol (30d)
-- Dune Query ID: 7722600
-- Volume market share breakdown across DEX protocols on Ethereum over the last 30 days

SELECT
    project AS dex_protocol,
    SUM(amount_usd) AS total_volume_usd,
    COUNT(*) AS trade_count,
    AVG(amount_usd) AS avg_trade_size_usd
FROM dex.trades
WHERE
    blockchain = 'ethereum'
    AND block_time >= NOW() - INTERVAL '30' DAY
    AND amount_usd IS NOT NULL
    AND amount_usd > 0
GROUP BY 1
ORDER BY 2 DESC
