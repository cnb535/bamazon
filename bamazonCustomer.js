const mysql = require("mysql");
const inquirer = require("inquirer")

const connection = mysql.createConnection({
	host: "localhost",
	port: 8889,

	user: "root",

	password: "",
	database: "bamazon"
});

connection.connect(function(err) {
	if (err) throw err;
	console.log("connected as id " + connection.threadId + "\n");
	readProducts();
})

function readProducts() {
	connection.query("SELECT * FROM products", function(err, res) {
		if (err) throw err;

		console.table(res);

		//Inquirer is then ran to ask user information on product
		runSearch();
	})
}

function runSearch() {
	inquirer
		.prompt([
		{
			name: "product",
			type: "input",
			message: "What is the ID of the product you want to buy?"
		},
		{
			name: "quantity",
			type: "input",
			message: "How many would you like to buy?"
		}
		])
		.then(function(answer) {
			//The product ID entered is then ran through the database to find the product.
			
			//Once the product is found, it's quantity is then checked to see the amount left.
			//If 0, then a "That product is sold out" message will display.
			//We will also check to see if the amount the user asked for is available
			
			//If the amount is available, the total price will be calculated and the user will be asked if 
			//they are okay with that amount

			//If so, the order is put through and the product database is updated to reflect the new quantity.
		});
}

