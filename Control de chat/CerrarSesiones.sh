mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e 
"UPDATE chatsessions
SET chatsessions.End_Time = Now()
WHERE EXISTS
(
	SELECT Max(chatmessages.Time) AS Time
		FROM chatmessages
		WHERE chatmessages.Time NOT BETWEEN DATE_SUB(Now(), INTERVAL 5 MINUTE) AND Now()
		GROUP BY chatmessages.Chat_ID
) AND chatsessions.End_Time IS NULL
OR NOT EXISTS
(
SELECT * FROM chatmessages
WHERE chatmessages.Chat_ID = chatsessions.ID
) AND chatsessions.End_Time IS NULL
;"