const puppeteer = require("puppeteer");

puppeteer.launch({
  headless: true, args: ["--disable-dev-shm", "--no-sandbox", "--disable-setuid-sandbox"]
}).then(() => process.exit(0), () => process.exit(1));
