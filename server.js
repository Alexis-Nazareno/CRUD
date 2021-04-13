const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const serverConfig = require('./configs/server.config');
const morgan = require('morgan');
require('./util/services')(app);

app.use(morgan('combined'));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json({ type: 'application/json' }));

app.listen(serverConfig.port, () => {
    console.log('Listening to port: ' + serverConfig.port);
});