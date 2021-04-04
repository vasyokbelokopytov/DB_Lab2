INSERT INTO students(
  student_id,
  student_region,
  student_area,
  student_territory,
  institution_name,
  birth,
  sex,
  status,
  territory_type, 
  profile,
  language,
  adapt_scale
  ) SELECT uuid(outid), regname, areaname, tername, eoname, birth, sextypename, regtypename, tertypename, classprofilename, classlangname, ukradaptscale FROM public.zno_info;