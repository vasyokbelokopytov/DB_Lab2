INSERT INTO Locations(region, area, territory) 
SELECT DISTINCT regname, areaname, tername FROM zno_info 
WHERE regname IS NOT NULL AND areaname IS NOT NULL AND tername IS NOT NULL
UNION
SELECT DISTINCT eoregname, eoareaname, eotername FROM zno_info 
WHERE eoregname IS NOT NULL AND eoareaname IS NOT NULL AND eotername IS NOT NULL
UNION 
SELECT DISTINCT ukrptregname, ukrptareaname, ukrpttername FROM zno_info
WHERE ukrptregname IS NOT NULL AND ukrptareaname IS NOT NULL AND ukrpttername IS NOT NULL
UNION
SELECT DISTINCT histptregname, histptareaname, histpttername FROM zno_info
WHERE histptregname IS NOT NULL AND histptareaname IS NOT NULL AND histpttername IS NOT NULL
UNION
SELECT DISTINCT mathptregname, mathptareaname, mathpttername FROM zno_info
WHERE mathptregname IS NOT NULL AND mathptareaname IS NOT NULL AND mathpttername IS NOT NULL
UNION
SELECT DISTINCT physptregname, physptareaname, physpttername FROM zno_info
WHERE physptregname IS NOT NULL AND physptareaname IS NOT NULL AND physpttername IS NOT NULL
UNION
SELECT DISTINCT chemptregname, chemptareaname, chempttername FROM zno_info 
WHERE chemptregname IS NOT NULL AND chemptareaname IS NOT NULL AND chempttername IS NOT NULL
UNION
SELECT DISTINCT bioptregname, bioptareaname, biopttername FROM zno_info 
WHERE bioptregname IS NOT NULL AND bioptareaname IS NOT NULL AND biopttername IS NOT NULL
UNION
SELECT DISTINCT geoptregname, geoptareaname, geopttername FROM zno_info
WHERE geoptregname IS NOT NULL AND geoptareaname IS NOT NULL AND geopttername IS NOT NULL
UNION
SELECT DISTINCT engptregname, engptareaname, engpttername FROM zno_info
WHERE engptregname IS NOT NULL AND engptareaname IS NOT NULL AND engpttername IS NOT NULL
UNION
SELECT DISTINCT fraptregname, fraptareaname, frapttername FROM zno_info
WHERE fraptregname IS NOT NULL AND fraptareaname IS NOT NULL AND frapttername IS NOT NULL
UNION
SELECT DISTINCT deuptregname, deuptareaname, deupttername FROM zno_info
WHERE deuptregname IS NOT NULL AND deuptareaname IS NOT NULL AND deupttername IS NOT NULL
UNION
SELECT DISTINCT spaptregname, spaptareaname, spapttername FROM zno_info
WHERE spaptregname IS NOT NULL AND spaptareaname IS NOT NULL AND spapttername IS NOT NULL;
