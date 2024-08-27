CREATE TABLE PatientRecords (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    DiseaseType VARCHAR(255) NOT NULL,
    IncidenceRate FLOAT NOT NULL,
    FacilityID INT,
    Date DATE NOT NULL,
    FOREIGN KEY (FacilityID) REFERENCES HealthcareFacilities(FacilityID)
);
