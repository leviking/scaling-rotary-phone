const http = require('http')
const express = require('express')
const mysql = require('mysql')

const hostname = '127.0.0.1';
const port = 3000;

const con = mysql.createConnection({
  host: "localhost",
  user: process.env.SQL_USER,
  password: process.env.SQL_PASS
})

const app = express()

con.connect((err) => {
	if(err) throw err
	console.log("connected!")
})

app.get('/', (req, res) => {
  res.send('Hello from Express')
})

app.listen(3000)

//const server = http.createServer((req, res) => {
//	  res.statusCode = 200;
//	  res.setHeader('Content-Type', 'text/plain');
//	  res.end('Hello World');
//});

//server.listen(port, hostname, () => {
//	  console.log(`Server running at http://${hostname}:${port}/`);
//});
