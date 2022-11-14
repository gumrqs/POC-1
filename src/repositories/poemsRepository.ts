import connection from "../database/database.js"; 
import { QueryResult } from "pg";
import { idAuthor } from "../protocols/ids.js";
import { Poem,PoemName } from "../protocols/poems.js";

export async function postPoems(poem:Poem):Promise<QueryResult<[]>>{

   const idStudent:QueryResult<idAuthor> = await connection.query(`
        SELECT id FROM
            students
        WHERE name=($1);
    `,[poem.author]);
    return  connection.query(`
        INSERT INTO 
            poems("titlePoem", poem, "studentId")
        VALUES 
            ($1,$2,$3)
    `, [poem.titlePoem, poem.poem, idStudent.rows[0].id])
}

export async function getPoemsName(name:string):Promise<QueryResult<PoemName>>{
    console.log(name, '777777777777')
    const idStudent:QueryResult<idAuthor> = await connection.query(`
        SELECT id FROM
            students
        WHERE name=($1);
    `,[name]);
    return await connection.query(`
        SELECT * FROM 
            poems
        WHERE 
            "studentId"=($1);
    `,[idStudent.rows[0].id])
}

export async function updatePoemsId(id:number, poem:Poem):Promise<QueryResult<[]>>{

    return await connection.query(`
        UPDATE 
            poems 
         SET 
            poem =($1) 
            ,
            "titlePoem" = ($3)
        WHERE 
            id=($2)
    `,[poem.poem, id, poem.titlePoem]);
}

export async function deletePoemId(id:number):Promise<QueryResult<[]>>{

    return await connection.query(`
        DELETE FROM 
            poems
        WHERE 
            id=($1)
    `,[ id]);
}