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