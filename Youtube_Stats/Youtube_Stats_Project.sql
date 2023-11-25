/* Using the database */
USE youtube;

/* Dropping the table youtube_stats if exist */
DROP TABLE IF EXISTS youtube_stats;

/* Imported data into table using table data import wizard  */
SELECT * FROM youtube_stats;

/* Replacing the null values */
UPDATE youtube_stats
SET video_viewd = 18767767845
WHERE video_viewd = 0; 

/* Ordering the data in ascending order */
SELECT * FROM youtube_stats
ORDER BY youtuber ASC;

/* Creating table called ranking */
CREATE TABLE ranking AS
(SELECT video_views_rank, country_rank, channel_type_rank FROM youtube_stats);
SELECT * FROM ranking;

/* Dropping the columns in the youtube_stats table */
ALTER TABLE youtube_stats
DROP COLUMN video_views_rank;

ALTER TABLE youtube_stats
DROP COLUMN country_rank;

ALTER TABLE youtube_stats
DROP COLUMN channel_type_rank;

/* Creating table called earnings */
CREATE TABLE earnings AS
(SELECT lowest_monthly_earnings, highest_monthly_earnings, lowest_yearly_earnings, highest_yearly_earnings
FROM youtube_stats);
SELECT * FROM earnings;

/* Dropping the columns in the youtube_stats table */
ALTER TABLE youtube_stats 
DROP lowest_monthly_earnings, 
DROP highest_monthly_earnings, 
DROP lowest_yearly_earnings, 
DROP highest_yearly_earnings;

/* Adding the column named ID in youtube stats and making it into primary key */
ALTER TABLE youtube_stats
ADD COLUMN ID INT PRIMARY KEY AUTO_INCREMENT FIRST;
SELECT * FROM youtube_stats;


-- Add the new column youtube_stats_id to the 'ranking' table with auto-increment and foreign key
ALTER TABLE ranking
ADD COLUMN youtube_stats_id INT AUTO_INCREMENT,
ADD CONSTRAINT fk_youtube_stats_id
FOREIGN KEY (youtube_stats_id) REFERENCES youtube_stats(ID);

-- Creating the one more foreign key in earning table

ALTER TABLE earnings
ADD COLUMN youtube_id INT AUTO_INCREMENT,
ADD CONSTRAINT fk_youtube_id 
FOREIGN KEY (youtube_id) REFERENCES youtube_stats(ID);

SELECT * FROM earnings;
SELECT * FROM ranking;
SELECT * FROM youtube_stats;

-- QUERIES

-- What is the title of YouTube channel that has more subscribers?
SELECT Title, MAX(subscribers) from youtube_stats
group by Title
LIMIT 1;
-- ANS: Ch3Thailand

-- Who has least subscribers?
SELECT Youtuber, MIN(subscribers) from youtube_stats
group by Youtuber
ORDER BY MIN(subscribers) ASC
LIMIT 1;
-- ANS: Natan por Aï¿

SELECT earnings.highest_yearly_earnings, youtube_stats.Youtuber
FROM earnings
INNER JOIN youtube_stats
ON earnings.youtube_id = youtube_stats.ID;