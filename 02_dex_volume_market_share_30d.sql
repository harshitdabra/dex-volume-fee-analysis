SELECT
    project AS dex_protocol,
    SUM(amount_usd) AS total_volume_usd,
    COUNT(*) AS num_trades,
    SUM(amount_usd) / SUM(SUM(amount_usd)) OVER () AS market_share
FROM dex.trades
WHERE
    blockchain = 'ethereum'
    AND block_time >= NOW() - INTERVAL '30' DAY
    AND amount_usd IS NOT NULL
    AND amount_usd > 0
GROUP BY 1
ORDER BY 2 DESC
