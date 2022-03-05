CREATE EXTENSION postgis;

SELECT genus, family, COUNT(DISTINCT scientific) AS artenzahl
FROM bienen GROUP BY genus, family ORDER BY artenzahl DESC;