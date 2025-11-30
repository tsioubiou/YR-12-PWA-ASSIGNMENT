const sqlite3 = require("sqlite3");

exports.runQuery = function runQuery(queryToRun) {
    return new Promise((resolve, reject) => {
        const db = new sqlite3.Database("database/datasource.db", sqlite3.OPEN_READONLY);
        const results = [];

        db.serialize(() => {
            db.each(queryToRun, (error, row) => {
                if (error) {
                    console.log("The error is here btw: " + error);
                    reject(error);
                }
                else {
                    console.log("Found a row here: " + row.ArtistName); 
                    results.push(row);
                }
            }, () => {
                db.close();
                console.log("I am at the end of queryRunner.js, here are the results: " + results);
                resolve(results);
            });
        });
    });
}