SELECT HEP.ProgramName, PR.DiseaseType, COUNT(*) AS CasesBeforeProgram, 
       (SELECT COUNT(*) FROM PatientRecords WHERE DiseaseType = PR.DiseaseType AND Date > HEP.ProgramStartDate AND FacilityID = HEP.FacilityID) AS CasesAfterProgram
FROM HealthEducationPrograms HEP
JOIN PatientRecords PR ON HEP.FacilityID = PR.FacilityID AND PR.Date < HEP.ProgramStartDate
GROUP BY HEP.ProgramName, PR.DiseaseType
ORDER BY CasesBeforeProgram DESC;
