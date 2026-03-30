/*
[질문]
각 주식(stock_name)에 대해 이득, 손실 금액(capital_gain_loss)을 조회하는 SQL 쿼리를 작성합니다.
여기서 주식의 이득, 손실이란 주식을 매매한 후의 총이익 또는 총손실입니다.
단, 이득, 손실 가격(price)은 하나의 칼럼이며, 매도하면 이득 값, 매수하면 손실 값을 저장합니다.
*/

SELECT
    stock_name,
    SUM(CASE WHEN operation = 'SELL' THEN price END) - SUM(CASE WHEN operation = 'Buy' THEN price END) AS capital_gain_loss
FROM stocks
GROUP BY stock_name;
