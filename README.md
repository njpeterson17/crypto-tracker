# Bitcoin Price Tracker

A sleek, dark-themed Bitcoin price tracking website that displays a 7-day calendar showing daily price movements with color-coded indicators.

![Bitcoin Tracker Preview](preview.png)

## Features

- 📊 **Live Bitcoin Price** - Real-time BTC/USD price from CoinGecko API
- 📅 **7-Day Calendar View** - Visual history of the past week
- 🎨 **Color Coded** - Green for up, Red for down
- 📱 **Responsive Design** - Works on all devices
- 🔄 **Auto-refresh** - Updates every 60 seconds

## Deploy Online

### Option 1: GitHub Pages (Free)

1. Create a new repository on GitHub
2. Upload these files to the repository
3. Go to Settings → Pages → Source → Select "main" branch
4. Your site will be live at `https://yourusername.github.io/btc-tracker`

### Option 2: Netlify Drop (Free - Easiest!)

1. Go to [netlify.com/drop](https://netlify.com/drop)
2. Drag and drop the entire `btc-tracker` folder
3. Get an instant live URL!

### Option 3: Vercel (Free)

1. Install Vercel CLI: `npm i -g vercel`
2. Run `vercel` in this directory
3. Follow the prompts

## Local Development

Simply open `index.html` in your browser, or run a local server:

```bash
# Python 3
python -m http.server 8000

# Node.js
npx serve .

# PHP
php -S localhost:8000
```

Then visit `http://localhost:8000`

## API

This project uses the free [CoinGecko API](https://www.coingecko.com/en/api) for Bitcoin price data. No API key required!

## Tech Stack

- HTML5
- CSS3 (with CSS Grid & Flexbox)
- Vanilla JavaScript (ES6+)
- CoinGecko API

## License

MIT
