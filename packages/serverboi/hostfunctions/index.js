const express = require('express')
const WOL = require("./wol");
const app = express()
const port = 3000


app.post('/wol', async (req, res) => {
	const macAddress = req.body;
	if (!macAddress || req.headers["content-type"] !== "text/plain") {
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
  console.log(`WOL Boi app listening at http://localhost:${port}`)
})
