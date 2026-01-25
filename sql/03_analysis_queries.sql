SELECT Churn, COUNT(*) FROM telco_churn GROUP BY Churn;

SELECT Contract, Churn, COUNT(*)
FROM telco_churn
GROUP BY Contract, Churn;

SELECT Churn, AVG(tenure)
FROM telco_churn
GROUP BY Churn;
