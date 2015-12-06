// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: create character and face the dragon
// Goals: defeat the dragon
// Characters: Knight, Archer, Wizard
// Objects: characters, dragon, potion
// Functions: Attack, Use Item

// Pseudocode
//create player constructor with choice of knight, archer, wizard
//create dragon object with health and damage properties
//create knight, archer, wizard character object with health and damage properties
//create attack and use item functions

// Initial Code

var player = function(name, job){
	this.name = name;
	this.job = job;
}


var dragon = {
	health: 200,
	damage: 15
}

var knight = {
	job: "Knight",
	health: 200,
	damage: 10
}

var archer = {
	job: "Archer",
	health: 180,
	damage: 15
}

var wizard = {
	job: "Wizard",
	health: 160,
	damage: 20
}

var potion = {
	health: 20
}

function attackMonster(player, monster){
	console.log(player.name + " dealt " + player.job.damage + " points of damage to the Dragon! It has " + (monster.health - player.job.damage) + " points of health left!");
	monster.health = monster.health - player.job.damage
	console.log("The Dragon retaliates and deals " + monster.damage + " points of damage to " + player.name + "! " + player.name + " has " + (player.job.health - monster.damage) + " points of health left!")
	player.health = player.job.health - monster.damage
}

function usePotion(player, potion){
	console.log(player.name + " uses a potion from their inventory! " + player.name + " recovers " + potion.health + " points of health!")
	player.health = player.health + potion.health;
}


newPlayer1 = new player("Lu", knight);
newPlayer2 = new player("Ru", archer);
attackMonster(newPlayer2, dragon);
usePotion(newPlayer2, potion);
attackMonster(newPlayer1, dragon);

// Refactored Code






// Reflection
//
//What was the most difficult part of this challenge?

	// To me the most difficult part was time. I knew that if I wanted to create something complex it would have taken alot of time and research.

// What did you learn about creating objects and functions that interact with one another?

	// I learned that there are so many things you can do and create that the possibilities are endless.
	// Also make sure that your spelling things correct and that your syntax is right. So many times my code did not work because of those things.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

	// I didn't really but only because I had kept my game simple and not too complicated. I am sure that if I had made it more complex I would have implemented more methods.

// How can you access and manipulate properties of objects?

	// You can access properties of objects by calling them and if you want to change or modify those, you need to set them to something else.
	// Look into the functions I created above. They access object properties and change them.
