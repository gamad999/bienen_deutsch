CREATE EXTENSION postgis;

-- Konsultation der Anzahl der Arten nach biologischen Gattungen.
SELECT genus, family, COUNT(DISTINCT scientific) AS artenzahl
FROM bienen GROUP BY genus, family ORDER BY artenzahl DESC;

/* Abfrage des wissenschaftlichen Namens der auf dem nationalen
Hoheitsgebiet nachgewiesenen Bienenarten.*/
SELECT species, genus, COUNT(DISTINCT id) AS reg
FROM bienen GROUP BY species, genus ORDER BY reg DESC;

-- Anhörung namhafter Gruppen (Die Hummeln-Bombus Gattung).
SELECT species AS arten, COUNT(DISTINCT id) AS reg
FROM bienen WHERE genus = 'Bombus' GROUP BY arten ORDER BY reg DESC;

-- Abfrage der Anzahl der Datensätze pro Jahr.
SELECT year AS jahr, COUNT(DISTINCT species) AS arten_jahr, 
COUNT(DISTINCT id) AS reg
FROM bienen GROUP BY year ORDER BY year DESC, arten_jahr, reg;

-- Einsichtnahme in die Unterlagen durch die Datenerhebungsstelle.
SELECT institutio AS institution, COUNT(DISTINCT id) AS reg, COUNT(DISTINCT species) AS arten
FROM bienen GROUP BY institutio ORDER BY reg DESC, arten;