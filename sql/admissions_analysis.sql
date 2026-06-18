-- Tool: Google BigQuery
-- Project: NHS Accident Analysis 2015
-- Question: Which injury type causes the most hospital admissions?

SELECT
    InjuryType,
    SUM(NumberOfAdmissions) AS TotalAdmissions
FROM `health-care-499508.nhs_analysis.Admissions`
WHERE InjuryType <> 'All Diagnoses'
GROUP BY InjuryType
ORDER BY TotalAdmissions DESC;
