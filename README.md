# ezref
App for ezmaster, that can serve .json and .csv files through http.

## Install

Get the files.

Go in the directory.

Install the app:

```bash
$ npm install
```

## Run

Create a directory to serve (`data`).
Create a settings file, besides `data`, named `data.json`.
Put the port to use in environement variable named PORT (default : 3000)

```json
{
	"cache": 45000,
    "showDir": true,
    "autoIndex": true,
    "defaultExt": "txt",
    "gzip": false,
	"contentType" : "text/plain",
	"cors" : false,
	"corsHeaders" : "",
	"https" : false,
	"robots" : false,
	"proxy" : null,
	"ext" :  "txt"
}
```

Run the server:
```bash
$ node ./cli path-to-directory-to-serve
```
