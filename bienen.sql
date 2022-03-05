CREATE EXTENSION postgis;

SELECT genus, family, COUNT(DISTINCT scientific) AS artenzahl
FROM bienen GROUP BY genus, family ORDER BY artenzahl DESC;

SELECT species, genus, COUNT(DISTINCT id) AS reg
FROM bienen GROUP BY species, genus ORDER BY reg DESC;

SELECT species AS arten, COUNT(DISTINCT id) AS reg
FROM bienen WHERE genus = 'Bombus' GROUP BY arten ORDER BY reg DESC;

SELECT year AS jahr, COUNT(DISTINCT species) AS arten_jahr, 
COUNT(DISTINCT id) AS reg
FROM bienen GROUP BY year ORDER BY year DESC, arten_jahr, reg;