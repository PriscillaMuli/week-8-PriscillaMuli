CREATE TABLE HealthEducationPrograms (
    ProgramID INT PRIMARY KEY AUTO_INCREMENT,
    ProgramName VARCHAR(255) NOT NULL,
    Scope TEXT NOT NULL,
    ParticipantCount INT NOT NULL,
    FacilityID INT,
    FOREIGN KEY (FacilityID) REFERENCES HealthcareFacilities(FacilityID)
);
