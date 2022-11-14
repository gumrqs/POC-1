import express from 'express';
import { poemsStudent } from './Controllers/PoemsControllers.js';
var server = express(); /*
server.use(json());
 */
server.get("/hh", poemsStudent);
server.listen(4000, function () {
    console.log("Server running on port 4000");
});
