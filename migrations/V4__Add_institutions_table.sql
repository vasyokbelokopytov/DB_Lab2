CREATE TABLE Institutions(
  institution_name TEXT PRIMARY KEY,
  institution_region VARCHAR(50),
  institution_area VARCHAR(50),
  institution_territory VARCHAR(50),
  institution_type VARCHAR(80),
  institution_parent TEXT, 
  CONSTRAINT fk_institution_location
  FOREIGN KEY(institution_region, institution_area, institution_territory) 
  REFERENCES Locations(region, area, territory)
);
