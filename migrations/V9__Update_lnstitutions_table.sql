UPDATE zno_info SET eoname = 'Невідомо' WHERE eoname IS NULL;
UPDATE zno_info SET ukrptname = 'Невідомо' WHERE ukrptname IS NULL;
UPDATE zno_info SET histptname = 'Невідомо' WHERE histptname IS NULL;
UPDATE zno_info SET mathptname = 'Невідомо' WHERE mathptname IS NULL;
UPDATE zno_info SET physptname = 'Невідомо' WHERE physptname IS NULL;
UPDATE zno_info SET chemptname = 'Невідомо' WHERE chemptname IS NULL;
UPDATE zno_info SET bioptname = 'Невідомо' WHERE bioptname IS NULL;
UPDATE zno_info SET geoptname = 'Невідомо' WHERE geoptname IS NULL;
UPDATE zno_info SET engptname = 'Невідомо' WHERE engptname IS NULL;
UPDATE zno_info SET fraptname = 'Невідомо' WHERE fraptname IS NULL;
UPDATE zno_info SET deuptname = 'Невідомо' WHERE deuptname IS NULL;
UPDATE zno_info SET spaptname = 'Невідомо' WHERE spaptname IS NULL;


INSERT INTO Institutions(
  institution_name,
  institution_region,
  institution_area,
  institution_territory,
  institution_type,
  institution_parent
  ) SELECT DISTINCT ON (eoname) * FROM (
    SELECT DISTINCT eoname, eoregname, eoareaname, eotername, eotypename, eoparent FROM zno_info
    UNION
      SELECT DISTINCT ukrptname, ukrptregname, ukrptareaname, ukrpttername, NULL, NULL FROM zno_info
    UNION
      SELECT DISTINCT histptname, histptregname, histptareaname, histpttername, NULL, NULL FROM zno_info
    UNION
      SELECT DISTINCT mathptname, mathptregname, mathptareaname, mathpttername, NULL, NULL FROM zno_info
    UNION
      SELECT DISTINCT physptname, physptregname, physptareaname, physpttername, NULL, NULL FROM zno_info
    UNION
      SELECT DISTINCT chemptname, chemptregname, chemptareaname, chempttername, NULL, NULL FROM zno_info
    UNION
      SELECT DISTINCT bioptname, bioptregname, bioptareaname, biopttername, NULL, NULL FROM zno_info
    UNION
      SELECT DISTINCT geoptname, geoptregname, geoptareaname, geopttername, NULL, NULL FROM zno_info
    UNION
      SELECT DISTINCT engptname, engptregname, engptareaname, engpttername, NULL, NULL FROM zno_info
    UNION
      SELECT DISTINCT fraptname, fraptregname, fraptareaname, frapttername, NULL, NULL FROM zno_info
    UNION
      SELECT DISTINCT deuptname, deuptregname, deuptareaname, deupttername, NULL, NULL FROM zno_info
    UNION
      SELECT DISTINCT spaptname, spaptregname, spaptareaname, spapttername, NULL, NULL FROM zno_info) AS UNIONED;