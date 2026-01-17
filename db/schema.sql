DROP DATABASE IF EXISTS knights_quest;
CREATE DATABASE knights_quest;

\c knights_quest

select current_database();

CREATE TABLE realms (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    ruler VARCHAR(100),
    description TEXT
);

CREATE TABLE characters (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    realm_id INTEGER REFERENCES realms(id)
);

CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50)
);

CREATE TABLE quests (
    id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    realm_id INTEGER REFERENCES realms(id),
    description TEXT,
    created_at TIMESTAMP DEFAULT now()
);