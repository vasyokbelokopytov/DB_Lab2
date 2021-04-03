CREATE TABLE Students_Subjects(
  student_id UUID,
  subject_name VARCHAR(40),
  institution_name TEXT,
  zno_grade NUMERIC(10, 2),
  dpa_grade INT2,
  test_grade INT2,
  test VARCHAR(40),
  test_status VARCHAR(30),
  language VARCHAR(20),
  dpa_level VARCHAR(30),
  year INT2,
  PRIMARY KEY(student_id, subject_name),
  CONSTRAINT fk_students_subjects_subjects
    FOREIGN KEY(subject_name) 
    REFERENCES Subjects(subject_name),
  CONSTRAINT fk_students_subjects_students
    FOREIGN KEY(student_id) 
    REFERENCES Students(student_id),
  CONSTRAINT fk_students_subjects_institutions
    FOREIGN KEY(institution_name) 
    REFERENCES Institutions(institution_name)
);
