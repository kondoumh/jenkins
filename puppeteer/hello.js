const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch({args: ['--no-sandbox']});
  const page = await browser.newPage();
  await page.goto('https://kondoumh.com');
  await page.screenshot({path: 'screenshot/kondoumh_com.png'});

  await browser.close();
})();