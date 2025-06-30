const express = require('express');
const app = express();
const port = 3000;

// Texto
app.get('/text', (req, res) => {
    const text = new Date();
    console.log(`Rota /text acessada. Hora: ${text.toLocaleString()}`);
    res.send('Teste com texto - Ok - NodeJS');
});

// Hora
app.get('/time', (req, res) => {
    const time = new Date();
    console.log(`Rota /time acessada. Hora: ${time.toLocaleString()}`);
    res.send(`Time: ${time.toLocaleString()}`);
});

app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});
