const express = require('express')
const app = express()

const msg = "Hello world! this is nodejs in a docker container.."

app.get('/', (req, res) =>{
    res.send(msg)
})

const server = app.listen(3000, ()=>{
    console.log("app running on port 3000...");
})