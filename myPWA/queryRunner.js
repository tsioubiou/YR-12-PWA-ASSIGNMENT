const sqlite3 = require("sqlite3");

exports.runQuery = function runQuery(queryToRun) {
    return new Promise((resolve, reject) => {
        const db = new sqlite3.Database("database/datasource.db", sqlite3.OPEN_READONLY);
        const results = [];

        db.serialize(() => {
            db.each(queryToRun, (error, row) => {
                if (error) {
                    reject(error);
                }
                else {
                    results.push(row);
                }
            }, () => {
                db.close();
                resolve(results);
            });
        });
    });
}