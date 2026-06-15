SELECT
    DATE_TRUNC('day', block_time) AS day,
    project AS dex_protocol,
    SUM(amount_usd * 0.003) AS estimated_fee_usd,
    COUNT(*) AS num_trades
FROM dex.trades
WHERE
    blockchain = 'ethereum'
    AND block_time >= NOW() - INTERVAL '30' DAY
    AND amount_usd IS NOT NULL
    AND amount_usd > 0
GROUP BY 1, 2
ORDER BY 1 DESC, 3 DESC
