--Overall churn rate

SELECT Churn, COUNT(*) as customers
FROM telco_churn
GROUP BY Churn;

-- Monthly revenue - churn

SELECT ROUND(SUM(MonthlyCharges),2) AS monthly_revenue_lost
FROM telco_churn
WHERE Churn = 'Yes';

--Revenue risk by contract

SELECT Contract, COUNT(*) AS churned_customer, ROUND(SUM(MonthlyCharges),2) AS revenue_at_risk
FROM telco_churn
WHERE Churn = 'Yes'
GROUP BY Contract
ORDER BY revenue_at_risk DESC;

--Revenue risk by payment method
SELECT PaymentMethod, COUNT(*) AS churned_customer, ROUND(SUM(MonthlyCharges),2) AS revenue_at_risk
FROM telco_churn
WHERE Churn = 'Yes'
GROUP BY PaymentMethod
ORDER BY revenue_at_risk DESC;

--High value churn customers
SELECT customerID, MonthlyCharges, tenure, Contract
FROM telco_churn
WHERE Churn = 'Yes'
ORDER BY MonthlyCharges DESC 
LIMIT 20;