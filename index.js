const express = require('express');
const app = express();
const port = 3000;

// Servir arquivos estáticos na pasta "public"
app.use(express.static('public'));

// Rota principal
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/public/index.html');
});

app.listen(port, () => {
    console.log(`App running at http://localhost:${port}`);
});