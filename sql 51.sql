CREATE TABLE HealthEducationPrograms (
    ProgramID INT PRIMARY KEY,
    ProgramName VARCHAR(100),
    Scope TEXT,
    ParticipantCount INT,
    FacilityID INT,
    FOREIGN KEY (FacilityID) REFERENCES HealthcareFacilities(FacilityID)
);