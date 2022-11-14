import express from 'express';
var server = express(); /*
server.use(json());
 */
server.listen(4000, function () {
    console.log("Server running on port 4000");
});
