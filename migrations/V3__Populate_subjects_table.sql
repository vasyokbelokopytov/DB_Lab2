INSERT INTO subjects(subject_name)
SELECT ukrtest FROM zno_info WHERE ukrtest IS NOT NULL LIMIT 1;

INSERT INTO subjects(subject_name)
SELECT histtest FROM zno_info WHERE histtest IS NOT NULL LIMIT 1;

INSERT INTO subjects(subject_name)
SELECT mathtest FROM zno_info WHERE mathtest IS NOT NULL LIMIT 1;

INSERT INTO subjects(subject_name)
SELECT phystest FROM zno_info WHERE phystest IS NOT NULL LIMIT 1;

INSERT INTO subjects(subject_name)
SELECT chemtest FROM zno_info WHERE chemtest IS NOT NULL LIMIT 1;

INSERT INTO subjects(subject_name)
SELECT biotest FROM zno_info WHERE biotest IS NOT NULL LIMIT 1;

INSERT INTO subjects(subject_name)
SELECT geotest FROM zno_info WHERE geotest IS NOT NULL LIMIT 1;

INSERT INTO subjects(subject_name)
SELECT engtest FROM zno_info WHERE engtest IS NOT NULL LIMIT 1;

INSERT INTO subjects(subject_name)
SELECT fratest FROM zno_info WHERE fratest IS NOT NULL LIMIT 1;

INSERT INTO subjects(subject_name)
SELECT deutest FROM zno_info WHERE deutest IS NOT NULL LIMIT 1;

INSERT INTO subjects(subject_name)
SELECT spatest FROM zno_info WHERE spatest IS NOT NULL LIMIT 1;