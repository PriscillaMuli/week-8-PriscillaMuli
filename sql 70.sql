SELECT HF.Name, HF.Location
FROM HealthcareFacilities HF
JOIN HealthEducationPrograms HEP ON HF.FacilityID = HEP.FacilityID
WHERE HEP.ProgramName = 'Vaccination Drive';
