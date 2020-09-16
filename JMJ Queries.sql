--Returns the total number of loans in any given milestone
SELECT milestonecurrentname AS "Milestone", COUNT(*) AS "Loans"
FROM elliedb.loan
GROUP BY milestonecurrentname
ORDER BY COUNT(*) DESC

--Returns the average LTV of all loans, grouped by the type of mortgage 
SELECT mortgagetype AS "Mortgage Type", ROUND(AVG(ltv),3) AS "Average LTV"
FROM elliedb.loan
GROUP BY mortgagetype