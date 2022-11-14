import Joi from "joi";

const postpoemSchemas = Joi.object({
    titlePoem: Joi.string().required(),
    poem:Joi.string().required(),
    author: Joi.string().required(),
  });
  
  export { postpoemSchemas };