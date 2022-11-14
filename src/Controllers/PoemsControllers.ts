import { Request, Response } from "express";
import { STATUS_CODE } from "../enums/statusCode.js";
import { Poem } from "../protocols/poems.js";
import { postPoems, getPoemsName, updatePoemsId, deletePoemId} from "../repositories/poemsRepository.js";

export async function poemsStudent(req: Request, res: Response){
    try {
        const poem:Poem= req.body;

        if(!poem){
            return res.status(STATUS_CODE.UNAUTHORIZED).send('campos não foram preenchidos')
        }
        const insertPoem = await postPoems(poem)

        return res.status(STATUS_CODE.CREATED).send(insertPoem.rows)
    } catch (error) {
        
        return res.sendStatus(STATUS_CODE.SERVER_ERROR);
    }
    
}

export async function getpoems(req:Request, res: Response){
    try {
        const name:string = req.params.name

        const poemsStudent = await getPoemsName(name)

        return res.status(STATUS_CODE.OK).send(poemsStudent.rows)

    } catch (error) {
        
        return res.sendStatus(STATUS_CODE.SERVER_ERROR);
    }
} 

export async function updatePoems(req:Request, res: Response){

    try {
        const PoemId:number = Number(req.params.poemId)
        const poemNew:Poem = req.body

        const upPoems = await updatePoemsId(PoemId, poemNew)
        return res.status(STATUS_CODE.OK).send(upPoems.rows)

    } catch (error) {
        
        
        return res.sendStatus(STATUS_CODE.SERVER_ERROR);
    }
}

export async function deletePoem(req:Request, res: Response){

    try {
        const PoemId:number = Number(req.params.poemId)

        const upPoems = await deletePoemId(PoemId)

        return res.status(STATUS_CODE.OK).send('Poema deletado')

    } catch (error) {
        
        
        return res.sendStatus(STATUS_CODE.SERVER_ERROR);
    }
}