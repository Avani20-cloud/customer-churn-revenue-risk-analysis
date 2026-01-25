UPDATE telco_churn
SET TotalCharges = NULL WHERE TRIM(TotalCharges) = '';

ALTER TABLE telco_churn
ALTER COLUMN TotalCharges TYPE NUMERIC USING TotalCharges::NUMERIC;