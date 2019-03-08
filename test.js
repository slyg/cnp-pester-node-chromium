const puppeteer = require("puppeteer-core");

const CHROME_BIN = "/usr/bin/google-chrome";

(async () => {
  const browser = await puppeteer.launch({ executablePath: CHROME_BIN });
  const page = await browser.newPage();
  await page.goto("https://www.gov.uk/");
  await page.waitFor(".h1");
  const title = await page.title();
  console.log(`Page title is: ${title}`);
  await browser.close();
})();
