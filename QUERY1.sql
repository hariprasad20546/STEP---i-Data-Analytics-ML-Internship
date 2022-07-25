-- QUERY 1:

use cricket;
CREATE TABLE matches(id INT PRIMARY KEY,city VARCHAR(40),date DATE,player_of_match VARCHAR(40),venue VARCHAR(80),neutral_venue INT,team1 VARCHAR(80),team2 VARCHAR(80),toss_winner VARCHAR(80),
toss_decision VARCHAR(20),winner VARCHAR(80),result VARCHAR(40),result_margin INT,eliminator VARCHAR(10),method VARCHAR(10),umpire1 VARCHAR(40),umpire2 VARCHAR(40));

DESCRIBE matches;

-- QUERY 2:

CREATE TABLE deliveries (
    `id` INT,
    `inning` INT,
    `over` INT,
    `ball` INT,
    `batsman` VARCHAR(40),
    `non_striker` VARCHAR(40),
    `bowler` VARCHAR(40),
    `batsman_runs` INT,
    `extra_runs` INT,
    `total_runs` INT,
    `is_wicket` INT,
    `dismissal_kind` VARCHAR(40),
    `player_dismissed` VARCHAR(40),
    `fielder` VARCHAR(40),
    `extras_type` VARCHAR(40),
    `batting_team` VARCHAR(40),
    `bowling_team` VARCHAR(40),
     FOREIGN KEY(id) REFERENCES matches(id)
);

DESCRIBE deliveries;

-- QUERY 5:

SELECT * FROM deliveries LIMIT 20;

-- QUERY 6:s

SELECT * FROM matches LIMIT 20;

-- QUERY 7:

SELECT * FROM matches WHERE date = '2013-05-02';

-- QUERY 8:

SELECT * FROM matches WHERE result_margin > 100;

-- QUERY 9:

SELECT * FROM matches WHERE result = 'tie' ORDER BY date DESC;

-- QUERY 10:

SELECT COUNT(DISTINCT city) FROM matches;



