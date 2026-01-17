// List realms
const listRealms = "SELECT id, name FROM realms ORDER BY name";

// Fetch characters for a realm
const charactersByRealm =
  "SELECT id, name, role FROM characters WHERE realm_id = $1 ORDER BY name";

// List items
const listItems = "SELECT id, name, type, power FROM items ORDER BY name";

module.exports = { listRealms, charactersByRealm, listItems };
