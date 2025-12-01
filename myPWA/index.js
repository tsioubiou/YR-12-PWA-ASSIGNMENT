const express = require("express");
const path = require("path");
const queryRunner = require("./queryRunner.js")
const app = express();

app.get("/api", async (request, response) => {
    try {
        var result = await queryRunner.runQuery(request.query.query);
        response.json(result);
    }
    catch(error) {
        console.log("Error happened: " + error);
    }
});

app.use(express.static(path.join(__dirname, "public")));

app.get("/", function (request, response) {
    response.sendFile(path.join(__dirname, "public/index.html"));
});

app.listen(8000, () => console.log("Server is running on Port 8000, visit http://localhost:8000/ or http://127.0.0.1:8000 to access your website"));