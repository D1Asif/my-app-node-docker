import express from "express";

const app = express();

app.get('/', (req, res) => {
    res.json({message: 'Hello from Docker 🐳'})
})

app.listen(9000, () => {
    console.log(`App listening on port: ${9000}`);
})