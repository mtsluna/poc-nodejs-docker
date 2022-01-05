import * as express from "express";
import * as dotenv from "dotenv";

const app = express();
dotenv.config();

app.get('/', (req, res) => {
    res.send({
        test: 'ok'
    })
})

app.listen(process.env.PORT, () => {
    console.info(`Server started on port: ${process.env.PORT}`)
})