'use strict'

const {app, BrowserWindow} = require('electron');

require('electron-reload')(__dirname, {
  electron: require(`${__dirname}/node_modules/electron`)
});

let mainWindow = null;

app.on('window-all-closed', ()=>{
    if(process.platform !== 'darwin'){
        app.quit();
    }
});

app.on('ready', ()=>{
    mainWindow = new BrowserWindow();
    mainWindow.loadFile('index.html');
    mainWindow.on('closed', ()=>{
        mainWindow = null;
    });
});