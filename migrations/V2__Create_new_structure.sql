CREATE TABLE subjects(
  subject_name VARCHAR(40) PRIMARY KEY
);

CREATE TABLE locations(
  region VARCHAR(80),
  area VARCHAR(50),
  territory VARCHAR(50),
  PRIMARY KEY(region, area, territory)
);

CREATE TABLE institutions(
  institution_name TEXT PRIMARY KEY,
  institution_region VARCHAR(50),
  institution_area VARCHAR(50),
  institution_territory VARCHAR(50),
  institution_type VARCHAR(80),
  institution_parent TEXT, 
  CONSTRAINT fk_institution_location
  FOREIGN KEY(institution_region, institution_area, institution_territory) 
  REFERENCES locations(region, area, territory)
);

CREATE TABLE students(
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
	  REFERENCES locations(region, area, territory),
  CONSTRAINT fk_student_institution
    FOREIGN KEY(institution_name)
    REFERENCES institutions(institution_name)
);

CREATE TABLE students_subjects(
  student_id UUID,
  subject_name VARCHAR(40),
  institution_name TEXT,
  zno_grade NUMERIC(10, 2),
  dpa_grade INT2,
  test_grade INT2,
  test_status VARCHAR(30),
  language VARCHAR(20),
  dpa_level VARCHAR(30),
  year INT2,
  PRIMARY KEY(student_id, subject_name),
  CONSTRAINT fk_student_subject_subject
    FOREIGN KEY(subject_name) 
    REFERENCES subjects(subject_name),
  CONSTRAINT fk_student_subject_student
    FOREIGN KEY(student_id) 
    REFERENCES students(student_id),
  CONSTRAINT fk_student_subject_institution
    FOREIGN KEY(institution_name) 
    REFERENCES institutions(institution_name)
);
