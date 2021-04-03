INSERT INTO Students_Subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test,
  test_status,
  language,
  dpa_level,
  year)
SELECT 'Українська мова і література' AS subject, uuid(outid), ukrptname, ukrball100, ukrball12, ukrball, ukrtest, ukrteststatus, NULL, NULL, znoyear FROM public.zno_info;

INSERT INTO Students_Subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test,
  test_status,
  language,
  dpa_level,
  year)
SELECT 'Історія України' AS subject, uuid(outid), histptname, histball100, histball12, histball, histtest, histteststatus, histlang, NULL, znoyear FROM public.zno_info;

INSERT INTO Students_Subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test,
  test_status,
  language,
  dpa_level,
  year)
SELECT 'Математика' AS subject, uuid(outid), mathptname, mathball100, mathball12, mathball, mathtest, mathteststatus, mathlang, znoyear, NULL FROM public.zno_info;

INSERT INTO Students_Subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test,
  test_status,
  language,
  dpa_level,
  year)
SELECT 'Фізика' AS subject, uuid(outid), physptname, physball100, physball12, physball, phystest, physteststatus, physlang, NULL, znoyear FROM public.zno_info;

INSERT INTO Students_Subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test,
  test_status,
  language,
  dpa_level,
  year)
SELECT 'Хімія' AS subject, uuid(outid), chemptname, chemball100, chemball12, chemball, chemtest, chemteststatus, chemlang, NULL, znoyear FROM public.zno_info;

INSERT INTO Students_Subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test,
  test_status,
  language,
  dpa_level,
  year)
SELECT 'Біологія' AS subject, uuid(outid), bioptname, bioball100, bioball12, bioball, biotest, bioteststatus, biolang, NULL, znoyear FROM public.zno_info;

INSERT INTO Students_Subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test,
  test_status,
  language,
  dpa_level,
  year)
SELECT 'Географія' AS subject, uuid(outid), geoptname, geoball100, geoball12, geoball, geotest, geoteststatus, geolang, NULL, znoyear FROM public.zno_info;

INSERT INTO Students_Subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test,
  test_status,
  language,
  dpa_level,
  year)
SELECT 'Англійська мова' AS subject, uuid(outid), engptname, engball100, engball12, engball, engtest, engteststatus, NULL, engdpalevel, znoyear FROM public.zno_info;

INSERT INTO Students_Subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test,
  test_status,
  language,
  dpa_level,
  year)
SELECT 'Французька мова' AS subject, uuid(outid), fraptname, fraball100, fraball12, fraball, fratest, frateststatus, NULL, fradpalevel, znoyear FROM public.zno_info;

INSERT INTO Students_Subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test,
  test_status,
  language,
  dpa_level,
  year)
SELECT 'Німецька мова' AS subject, uuid(outid), deuptname, deuball100, deuball12, deuball, deutest, deuteststatus, NULL, deudpalevel, znoyear FROM public.zno_info;

INSERT INTO Students_Subjects(
  subject_name,
  student_id,
  institution_name,
  zno_grade,
  dpa_grade,
  test_grade,
  test,
  test_status,
  language,
  dpa_level,
  year)
SELECT 'Іспанська мова' AS subject, uuid(outid), spaptname, spaball100, spaball12, spaball, spatest, spateststatus, NULL, spadpalevel, znoyear FROM public.zno_info;
