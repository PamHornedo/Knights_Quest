INSERT INTO realms (name, ruler, description) VALUES 
('Desert Kingdom', 'Sultan Rashid the Wise', 'A sprawling desert empire built on trade routes. Home to master merchants and sand-sailors.'),
('Coastal Dominion', 'Admiral Lady Coretta', 'A maritime realm of skilled sailors, pirates, and fishing villages. The wealth flows from the seas.'),
('Dwarven Hold', 'Thane Gordin Ironbeard', 'Underground kingdom carved deep beneath the mountains. Renowned for craftsmanship and mining riches.'),
('Enchanted Forest', 'Queen Sylphia', 'A mystical woodland realm where ancient magic flows through the ancient trees and magical creatures roam freely.'),
('Northern Realm', 'King Aldric the Bold', 'A cold, mountainous kingdom known for brave warriors and legendary dragon slayers.');

INSERT INTO characters (name, role, realm_id) VALUES
('Sir Aelwyn', 'Shieldbearer', 1),
('Dame Rowena', 'Blade of the East', 2),
('Sir Thoren', 'Iron Fist', 3),
('Madlen of the Night', 'Spymaster', 4),
('Radulfus the Defender', 'Warrior', 5);

INSERT INTO items (name, type) VALUES
('Longsword of Dawn', 'weapon'),
('Shield of Resolute', 'armor'),
('Boots of Swiftness', 'accessory'),
('Tranquility Cloak', 'accessory'),
('Immunity Necklace', 'armor');

INSERT INTO quests (title, realm_id, description) VALUES
('Rescue the Villagers', 1, 'Clear bandits from the southern pass and escort villagers to safety.'),
('Retrieve the Iron Crown', 2, 'Recover the lost crown from the ruins beneath Ironmarch.'),
('Rebuild the Chapel', 3, 'Collect supplies to help rebuil the Chapel after the Great Fire'),
('Reunite the Faeries', 4, 'Bring all 10 Faeries back to the Enchanted tree'),
('Create a Fire', 5, 'Collect 5 firewood to keep warm');