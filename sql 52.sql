CREATE TABLE PatientRecords (
    PatientID INT PRIMARY KEY,
    DiseaseType VARCHAR(100),
    IncidenceRate FLOAT,
    FacilityID INT,
    Date DATE,
    FOREIGN KEY (FacilityID) REFERENCES HealthcareFacilities(FacilityID)
);