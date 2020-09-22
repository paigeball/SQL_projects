-- Returns the amount of loans grouped by county and state 
SElECT loans.property_county,  COUNT(*)
FROM loans
GROUP BY property_county
ORDER BY COUNT(*) DESC

-- Returns the average amount of tax grouped by county 
SELECT property_county, AVG(proposed_real_estate_taxes_amount) AS "Average Tax"
FROM loans
WHERE proposed_real_estate_taxes_amount IS NOT NULL
GROUP BY property_county
ORDER BY "Average Tax" DESC

-- Returns the average loan amount by county 
SELECT property_county AS "County", ROUND(AVG(base_loan_amount)) AS "Average Loan Amount"
FROM loans
GROUP BY property_county
ORDER BY "Average Loan Amount" DESC

-- Returns average property value by county 
SELECT property_county, ROUND(AVG(property_estimated_value)) AS "Property Value"
FROM loans
GROUP BY property_county
ORDER BY "Property Value" DESC

-- Returns average first monthly payment by mortgage type 
SELECT encompass_mortgage_type AS "Mortgage Type", ROUND(AVG(proposed_first_mortgage_amount)) AS "First Payment"
FROM loans
GROUP BY "Mortgage Type"
ORDER BY "First Payment" DESC