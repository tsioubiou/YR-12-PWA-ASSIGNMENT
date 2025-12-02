const express = require("express");
const path = require("path");
const queryRunner = require("./queryRunner.js"); // Use this to run the query function.
const app = express();

app.get("/api", async (request, response) => {
    try {
        var result = await queryRunner.runQuery(request.query.query); // Returns an array of each query result.
        response.json(result); // Send the array back to the client.
    }
    catch(error) {
        console.log("Error happened: " + error);
    }
});

app.use(express.static(path.join(__dirname, "public"))); // Lock serving files to only inside public folder.

app.get("/", function (request, response) {
    response.sendFile(path.join(__dirname, "public/index.html")); // Get index.html when first loading in.
});

// Listen to port 8000.
app.listen(8000, () => console.log("Server is running on Port 8000, visit http://localhost:8000/ or http://127.0.0.1:8000 to access your website"));