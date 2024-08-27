SELECT HF.Name, 
       AVG(DailyPatientCount) AS AvgDailyPatientLoad
FROM (
    SELECT FacilityID, COUNT(*) AS DailyPatientCount, Date
    FROM PatientRecords
    GROUP BY FacilityID, Date
) AS DailyPatientData
JOIN HealthcareFacilities HF ON DailyPatientData.FacilityID = HF.FacilityID
GROUP BY HF.Name
ORDER BY AvgDailyPatientLoad DESC;
