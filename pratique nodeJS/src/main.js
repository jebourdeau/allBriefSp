import express from 'express'
import packageJson from '../package.json' assert{ type: 'json'}

const host = process.env.HOST ?? 'localhost'
const port = Number(process.env.PORT) || 3000

const app = express();

app.get('/', (req,res)=>{
    res.json({
        version: package.version
    })
})

// Start the server
app.listen(port, host, ()=>{
    console.log(`Server(${packageJson.version}) is running on http://${host}:${port}`);
});