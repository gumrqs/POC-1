import { Request, Response, NextFunction } from "express";
import { STATUS_CODE } from "../enums/statusCode.js";
import { Poem } from "../protocols/poems.js";

export function validateSchema(schema) {
    return (req: Request, res: Response, next:NextFunction) => {
        const validation = schema.validate(req.body, { abortEarly: false });
        if (validation.error) {

            return res.sendStatus(STATUS_CODE.UNPROCESSABLE_ENTITY)
        }
        next();
    };
}