/* Lucas Wenger
11/15/2022
Project Description:
Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. 
You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. 
You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items. */

CREATE TABLE store (id INTEGER PRIMARY KEY, name TEXT, price REAL, quantity INTEGER, rating REAL, gtype TEXT);

INSERT INTO store VALUES /*
    (id, name, price, quantity, rating, gtype),
    */
    (1, "Skyrim", 59.99, 100, 5.0, "video"),
    (2, "Outer Wilds", 24.99, 20, 5.0, "video"),
    (3, "Monopoly", 19.99, 50, 4.6, "board"), 
    (4, "Lords of Waterdeep", 39.99, 20, 4.3, "board"),
    (5, "Portal", 9.99, 50, 4.9, "video"),
    (6, "Portal 2", 19.99, 50, 5.0, "video"), 
    (7, "Ticket to Ride", 39.99, 20, 4.1, "board"), 
    (8, "Super Mario Odyssey", 49.99, 50, 4.8, "video"), 
    (9, "Subnautica", 19.99, 20, 4.5, "video"), 
    (10, "Subnautica: Below Zero", 19.99, 20, 3.8, "video"), 
    (11, "Inscryption", 24.99, 30, 4.7, "video"), 
    (12, "Dishonored", 4.99, 5, 4.0, "video"), 
    (13, "Half-Life", 2.99, 5, 4.6, "video"), 
    (14, "Secret Hitler", 29.99, 20, 3.8, "board"), 
    (15, "Premium Backgammon", 79.99, 30, 4.2, "board");
    
SELECT * FROM store ORDER BY price; 

SELECT SUM(quantity) AS Inventory FROM store; 
