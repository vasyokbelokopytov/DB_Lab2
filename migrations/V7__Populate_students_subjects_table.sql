INSERT INTO students_subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test_status,
  language,
  dpa_level,
  year)
SELECT ukrtest, uuid(outid), ukrptname, ukrball100, ukrball12, ukrball,ukrteststatus, NULL, NULL, znoyear FROM public.zno_info
WHERE ukrtest IS NOT NULL;

INSERT INTO students_subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test_status,
  language,
  dpa_level,
  year)
SELECT histtest, uuid(outid), histptname, histball100, histball12, histball, histteststatus, histlang, NULL, znoyear FROM public.zno_info
WHERE histtest IS NOT NULL;

INSERT INTO students_subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test_status,
  language,
  dpa_level,
  year)
SELECT mathtest, uuid(outid), mathptname, mathball100, mathball12, mathball, mathteststatus, mathlang, NULL, znoyear FROM public.zno_info
WHERE mathtest IS NOT NULL;

INSERT INTO students_subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test_status,
  language,
  dpa_level,
  year)
SELECT phystest, uuid(outid), physptname, physball100, physball12, physball, physteststatus, physlang, NULL, znoyear FROM public.zno_info
WHERE phystest IS NOT NULL;

INSERT INTO students_subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test_status,
  language,
  dpa_level,
  year)
SELECT chemtest, uuid(outid), chemptname, chemball100, chemball12, chemball, chemteststatus, chemlang, NULL, znoyear FROM public.zno_info
WHERE chemtest IS NOT NULL;

INSERT INTO students_subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test_status,
  language,
  dpa_level,
  year)
SELECT biotest, uuid(outid), bioptname, bioball100, bioball12, bioball, bioteststatus, biolang, NULL, znoyear FROM public.zno_info
WHERE biotest IS NOT NULL;

INSERT INTO students_subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test_status,
  language,
  dpa_level,
  year)
SELECT geotest, uuid(outid), geoptname, geoball100, geoball12, geoball, geoteststatus, geolang, NULL, znoyear FROM public.zno_info
WHERE geotest IS NOT NULL;

INSERT INTO students_subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test_status,
  language,
  dpa_level,
  year)
SELECT engtest, uuid(outid), engptname, engball100, engball12, engball, engteststatus, NULL, engdpalevel, znoyear FROM public.zno_info
WHERE engtest IS NOT NULL;

INSERT INTO students_subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test_status,
  language,
  dpa_level,
  year)
SELECT fratest, uuid(outid), fraptname, fraball100, fraball12, fraball, frateststatus, NULL, fradpalevel, znoyear FROM public.zno_info
WHERE fratest IS NOT NULL;

INSERT INTO students_subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test_status,
  language,
  dpa_level,
  year)
SELECT deutest, uuid(outid), deuptname, deuball100, deuball12, deuball, deuteststatus, NULL, deudpalevel, znoyear FROM public.zno_info
WHERE deutest IS NOT NULL;

INSERT INTO students_subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test_status,
  language,
  dpa_level,
  year)
SELECT spatest, uuid(outid), spaptname, spaball100, spaball12, spaball, spateststatus, NULL, spadpalevel, znoyear FROM public.zno_info
WHERE spatest IS NOT NULL;
