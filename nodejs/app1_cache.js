const express = require('express');
const app = express();
const apicache = require('apicache');
const cache = apicache.middleware;
const port = 3000;

// Texto
app.get('/text', cache('10 seconds'), (req, res) => {
    const text = new Date().toISOString().replace('T', ' ').substr(0, 19);
    console.log(`Rota /text com cache acessada. Hora: ${text.toLocaleString()}`);
    res.send(`Teste com texto - Ok - Cache - NodeJS: ${text.toLocaleString()}`);
});

// Hora
app.get('/time', cache('60 seconds'), (req, res) => {
    const time = new Date().toISOString().replace('T', ' ').substr(0, 19);
    console.log(`Rota /time com cache acessada. Hora: ${time.toLocaleString()}`);
    res.send(`Time: ${time.toLocaleString()}`);
});

app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});
