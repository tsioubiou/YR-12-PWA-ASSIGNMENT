const sqlite3 = require("sqlite3");

// Exports make it so you can refernece the script and use the exported function like sqlite3 above.
exports.runQuery = function runQuery(queryToRun) {
    return new Promise((resolve, reject) => {
        const db = new sqlite3.Database("database/datasource.db", sqlite3.OPEN_READONLY); // Connect to database.
        const results = []; // Store results.

        db.serialize(() => { // Serialise makes every function wait for the one before it to finish.
            db.each(queryToRun, (error, row) => {
                if (error) {
                    reject(error); // If error then reject the Promise.
                }
                else {
                    results.push(row); // For every result add the row to results[].
                }
            }, () => {
                db.close(); // Close the database connection when finished.
                resolve(results); // Resolve the promis and give back the results list.
            });
        });
    });
}