CREATE TABLE Students(
  student_id UUID PRIMARY KEY,
  student_region VARCHAR(80) NOT NULL,
  student_area VARCHAR(50) NOT NULL ,
  student_territory VARCHAR(50) NOT NULL,
  institution_name TEXT,
  birth INT2 NOT NULL,
  sex VARCHAR(15) NOT NULL,
  status VARCHAR(100) NOT NULL,
  territory_type VARCHAR(40) NOT NULL, 
  profile VARCHAR(50), 
  language VARCHAR(20), 
  adapt_scale INT2 CHECK (adapt_scale >= 0),
  CONSTRAINT fk_student_location
    FOREIGN KEY(student_region, student_area, student_territory) 
	  REFERENCES Locations(region, area, territory),
  CONSTRAINT fk_student_institution
    FOREIGN KEY(institution_name)
    REFERENCES Institutions(institution_name)
);
