--SQL Practice Project

--Basic Queries

--Which tracks appeared in the most playlists and how many playlists did they appear in?

SELECT tracks.TrackId, tracks.Name, COUNT(playlist_track.TrackId) AS "Appearances"
FROM playlist_track
JOIN tracks 
	ON playlist_track.TrackId = tracks.TrackId
GROUP BY playlist_track.TrackId
ORDER BY COUNT(playlist_track.TrackId) DESC
LIMIT 100;


--(Working on it) Which track generated the most revenue? which album? which genre?
SELECT tracks.Name AS "Song", SUM(invoice_items.UnitPrice) AS "Total Revenue"	--Selects columns from both tables and renames them for the output
FROM invoice_items	--References the first table

JOIN tracks --Join invoice_items with tracks 
	ON invoice_items.TrackId = tracks.TrackId --Link the keys

GROUP BY name --Group the results by the name of the song
ORDER BY SUM(invoice_items.UnitPrice) DESC; --Order the results from highest revenue to lowest

