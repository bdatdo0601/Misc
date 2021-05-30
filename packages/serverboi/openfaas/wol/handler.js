'use strict'
const WOL = require("./wol");

module.exports = async (event, context) => {
  const macAddress = event.body;
	if (!macAddress || event.headers["content-type"] !== "text/plain") {
    return context.status(400).fail("Invalid Mac Address and/or format");
	}
	try {
		const result = await WOL.wake(macAddress);
		return context.status(200).succeed(result);
	} catch (err) {
		return context.status(400).fail(`Unable to wake device ${macAddress} (${err.message})`);
  }
}
