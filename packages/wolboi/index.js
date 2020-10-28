const express = require('express')
const bodyParser = require('body-parser');
const url = require('url');
const querystring = require('querystring');
const WOL = require("./wol");
const app = express()
const port = 3000

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.get('/', async (req, res) => {
	const { macAddress } = req.query;
	if (!macAddress) {
		res.status(400).send("Invalid Mac Address");
		return;
	}
	try {
		const result = await WOL.wake(macAddress);
		res.status(200).send(result);
		return;
	} catch (err) {
		res.status(400).send(`Unable to wake device ${err.message}`);
	}
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
