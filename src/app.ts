import express,{json} from 'express';
import { poemsStudent,getpoems,updatePoems, deletePoem} from './Controllers/PoemsControllers.js';



const server = express();
server.use(json());
 

server.post("/publish", poemsStudent);
server.get("/poems/:name", getpoems);

server.put("/poems/:poemId", updatePoems);

server.delete("/poems/:poemId", deletePoem);


server.listen(4000,()=>{
    console.log("Server running on port 4000");
})
