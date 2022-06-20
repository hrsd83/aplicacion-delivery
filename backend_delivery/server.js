const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const logger = require('morgan');
const cors = require('cors'); 

/*
*IMPORTACION DE RUTAS
*/
const usersRoutes = require('./routes/userRoutes');

const port = process.env.PORT || 3000;

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({
    extended: true
}));
app.use(cors());

app.disable('x-powered-by');


app.set('port', port);

/*
*LLAMADO DE LAS RUTAS
*/

usersRoutes(app);

server.listen(3000, '192.168.0.40' || 'localhost', function() {
    console.log('Aplicacion de nodeJS ' + port + ' Iniciada...');
});

app.get('/', (req, res) => {
    res.send('Ruta Raiz del backend');
});
app.get('/test', (req, res) => {
  res.send('Ruta Raiz del backend/TEST');
});

//MANEJO DE ERRORES
app.use((err,  req, res, next) =>{
  console.log(err);
  res.status(err.status || 500).send(err.stack);
})

