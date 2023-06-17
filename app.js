const log = require('node-file-logger');

// Opcje konfiguracji loggera
const options = {
    timeZone: 'America/Los_Angeles',
    folderPath: './logs',      
    dateBasedFileNaming: false,
    fileName: 'logs',
    fileNameExtension: '.log',     
    dateFormat: 'YYYY-MM-DD',
    timeFormat: 'HH:mm:ss.SSS',
    logLevel: 'debug',
    onlyFileLogging: true
}

// Ustawienie opcji loggera
log.SetUserOptions(options); 

const express = require("express");
const moment = require("moment-timezone");
const app = express();
const port = 3000;

// Definicja endpointu głównego
app.get("/", (req, res) => {
    let ip = req.connection.remoteAddress;
    let time = moment().tz(moment.tz.guess()).format("DD-MM-YYYY HH:mm:ss");
    res.send(`${ip} : ${time}`);
});

// Nasłuchiwanie na porcie 3000
app.listen(port, () => {
    // Wyswietlenie logow przy uruchomieniu serwera
    log.Info(`Data i godzina uruchomienia: ${moment().format("DD-MM-YYYY HH:mm:ss")}. Autor serwera: Klaudiusz Wierzbowski. Port TCP: ${port}`);
});
