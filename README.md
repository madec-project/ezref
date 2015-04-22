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
Put the port to use in `data.json`:

```json
{
    "port": 35000
}
```

Run the server:
```bash
$ node ./cli path-to-directory-to-serve
```
