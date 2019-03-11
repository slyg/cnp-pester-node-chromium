const puppeteer = require("puppeteer-core");
const debug = require("debug")("node:puppeteer");
const CHROME_BIN = "/usr/bin/google-chrome";

(async () => {
  try {
    const browser = await puppeteer.launch({ executablePath: CHROME_BIN });
    const page = await browser.newPage();
    await page.goto("https://www.gov.uk/", {
      waitUntil: "domcontentloaded"
    });
    const title = await page.evaluate(() =>
      document.querySelector("h1").textContent.trim()
    );
    debug(`Page title is: ${title}`);
    await browser.close();
  } catch (e) {
    console.error(`Wooops`);
    debug(e);
  }
})();
