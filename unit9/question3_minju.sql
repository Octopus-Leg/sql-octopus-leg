-- 주식별 매수/매도 기록을 바탕으로 총 손익 계산하기
SELECT 
    stock_name,
    SUM(CASE WHEN operation = 'Buy' THEN -price ELSE price END) AS capital_gain_loss
FROM stocks
GROUP BY stock_name;
