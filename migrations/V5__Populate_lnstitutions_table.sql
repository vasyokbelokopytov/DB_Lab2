INSERT INTO institutions(
  institution_name,
  institution_region,
  institution_area,
  institution_territory,
  institution_type,
  institution_parent
  ) SELECT DISTINCT ON (eoname) * FROM (
    SELECT DISTINCT COALESCE(eoname, 'Невідомо') AS eoname, eoregname, eoareaname, eotername, eotypename, eoparent FROM public.zno_info
    UNION
      SELECT DISTINCT COALESCE(ukrptname, 'Невідомо') AS ukrptname, ukrptregname, ukrptareaname, ukrpttername, NULL, NULL FROM public.zno_info
    UNION
      SELECT DISTINCT COALESCE(histptname, 'Невідомо') AS histptname, histptregname, histptareaname, histpttername, NULL, NULL FROM public.zno_info
    UNION
      SELECT DISTINCT COALESCE(mathptname, 'Невідомо') AS mathptname, mathptregname, mathptareaname, mathpttername, NULL, NULL FROM public.zno_info
    UNION
      SELECT DISTINCT COALESCE(physptname, 'Невідомо') AS physptname, physptregname, physptareaname, physpttername, NULL, NULL FROM public.zno_info
    UNION
      SELECT DISTINCT COALESCE(chemptname, 'Невідомо') AS chemptname, chemptregname, chemptareaname, chempttername, NULL, NULL FROM public.zno_info
    UNION
      SELECT DISTINCT COALESCE(bioptname, 'Невідомо') AS bioptname, bioptregname, bioptareaname, biopttername, NULL, NULL FROM public.zno_info
    UNION
      SELECT DISTINCT COALESCE(geoptname, 'Невідомо') AS geoptname, geoptregname, geoptareaname, geopttername, NULL, NULL FROM public.zno_info
    UNION
      SELECT DISTINCT COALESCE(engptname, 'Невідомо') AS engptname, engptregname, engptareaname, engpttername, NULL, NULL FROM public.zno_info
    UNION
      SELECT DISTINCT COALESCE(fraptname, 'Невідомо') AS fraptname, fraptregname, fraptareaname, frapttername, NULL, NULL FROM public.zno_info
    UNION
      SELECT DISTINCT COALESCE(deuptname, 'Невідомо') AS deuptname, deuptregname, deuptareaname, deupttername, NULL, NULL FROM public.zno_info
    UNION
      SELECT DISTINCT COALESCE(spaptname, 'Невідомо') AS spaptname, spaptregname, spaptareaname, spapttername, NULL, NULL FROM public.zno_info) AS UNIONED;
