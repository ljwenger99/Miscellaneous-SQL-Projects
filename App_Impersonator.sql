/* Lucas Wenger
11/16/2022
Project Description:
Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc. 
Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), 
and write SQL statements that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app. */

/* What does the app's SQL look like? */
/* BRIDGES High Scores */
CREATE TABLE bridges (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    difficulty TEXT,
    score INTEGER, /* in seconds -- lower scores are better */
    high TEXT
); 

INSERT INTO bridges (difficulty, score, high) VALUES
    ("easy", 11, "False"), 
    ("easy", 8, "True"), 
    ("medium", 23, "True"), 
    ("hard", 45, "False"), 
    ("hard", 41, "False"), 
    ("hard", 39, "True"); 
    
SELECT * FROM bridges; 
    
/* Player plays a new round and gets a new high score! */
INSERT INTO bridges (difficulty, score, high) VALUES ("hard", 35, "True"); 

/* Now the old high score isn't the high score any more -- we have to change it! */
UPDATE bridges SET high = "False" WHERE id = 6; 

SELECT * FROM bridges; 

/* Now, we only like to keep 3 high scores, so let's get rid of the lowest */
SELECT id, MAX(score) FROM bridges WHERE difficulty = "hard"; 

DELETE FROM bridges 
    WHERE score = (
        SELECT MAX(score) FROM bridges WHERE difficulty = "hard"
        ); 
        
SELECT * FROM bridges; 

        
