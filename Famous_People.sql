/* Lucas Wenger
11/16/2022
Project Description:
In this project, you’re going to make your own table with some small set of “famous people”, 
then make more tables about things they do and join those to create nice human readable lists.

For example, here are types of famous people and the questions your data could answer:

Movie stars: What movies are they in? Are they married to each other?
Singers: What songs did they write? Where are they from?
Authors: What books did they write?
Fictional characters: How are they related to other characters? What books do they show up in?*/

/* Create table about the people and what they do here */
CREATE TABLE characters (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT, 
    alignment TEXT);
    
INSERT INTO characters (name, alignment) 
    VALUES
    ("Luke Skywalker", "good"),
    ("Han Solo", "good"),
    ("Clark Kent", "good"),
    ("Bruce Wayne", "good"),
    ("Darth Sidious", "bad"),
    ("Lex Luthor", "bad"),
    ("Joker", "bad"),
    ("Frodo Baggins", "good"),
    ("Samwise Gamgee", "good"),
    ("Sauron", "bad"),
    ("Saruman", "bad"); 
    
CREATE TABLE origins (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    character_id INTEGER, 
    story TEXT, 
    genre TEXT);
    
INSERT INTO origins (character_id, story, genre)
    VALUES
    (1, "Star Wars", "Sci-Fi"),
    (2, "Star Wars", "Sci-Fi"),
    (3, "Superman", "Superhero"), 
    (4, "Batman", "Superhero"),
    (5, "Star Wars", "Sci-Fi"),
    (6, "Superman", "Superhero"), 
    (7, "Batman", "Superhero"), 
    (8, "Lord of the Rings", "Fantasy"),
    (9, "Lord of the Rings", "Fantasy"),
    (10, "Lord of the Rings", "Fantasy"),
    (11, "Lord of the Rings", "Fantasy"); 
    
CREATE TABLE friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    friend1_id INTEGER,
    friend2_id INTEGER);

INSERT INTO friends (friend1_id, friend2_id)
    VALUES
    (1,2),
    (3,4),
    (6,7),
    (8,9),
    (10,11);
    
/* Query showing characters with their friends sorted by genre */
SELECT c1.name, c2.name, origins.genre FROM friends
    JOIN characters AS c1
        ON friends.friend1_id = c1.id
    JOIN characters AS c2
        ON friends.friend2_id = c2.id
    JOIN origins
        ON friends.friend1_id = origins.character_id
    ORDER BY origins.genre; 
        
/* Query showing how many good/bad guys are in each story, listed alphabetically */
SELECT origins.story, characters.alignment, COUNT(characters.alignment) AS "# of characters" FROM characters
    JOIN origins
        ON characters.id = origins.character_id
    GROUP BY alignment, story
    ORDER BY story, ALIGNMENT; 
    
