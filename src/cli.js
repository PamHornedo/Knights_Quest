const inquirer = require("inquirer");
const db = require("./db");
const q = require("./queries");

async function start() {
  const realms = (await db.query(q.listRealms)).rows;
  const realmChoice = await inquirer.prompt([
    {
      name: "realm",
      type: "list",
      choices: realms.map((r) => ({ name: r.name, value: r.id })),
    },
  ]);

  const characters = (await db.query(q.charactersByRealm, [realmChoice.realm]))
    .rows;
  const charChoice = await inquirer.prompt([
    {
      name: "chars",
      type: "checkbox",
      choices: characters.map((c) => ({
        name: `${c.name} (${c.role})`,
        value: c.id,
      })),
      validate: (a) => a.length > 0 || "Select at least one character",
    },
  ]);

  // items, quest title, confirm, and insert logic follow similar pattern
}

start();
