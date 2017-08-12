-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE TABLE players (
    player_id   serial PRIMARY KEY,
    name        varchar(128) NOT NULL
);

CREATE TABLE matches (
    match_id    serial PRIMARY KEY,
    winner_id   integer NOT NULL references players(player_id),
    loser_id    integer NOT NULL references players(player_id)
);

CREATE VIEW standing as
    SELECT      players.player_id,
                players.name,
                COUNT(CASE players.player_id WHEN winner_id THEN 1 ELSE NULL END) AS wins,
                COUNT(match_id) AS matches
    FROM        players
    LEFT JOIN   matches ON players.player_id IN (winner_id, loser_id)
    GROUP BY    players.player_id;
